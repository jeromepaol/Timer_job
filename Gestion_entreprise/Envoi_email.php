<?php
session_start();


if (!empty($_POST['email']) AND !empty($_POST['mdp'])) 
    {
      $_SESSION['email'] = $_POST['email']; //Défini une variable de séssion
        
      $message = "Line 1\r\nLine 2\r\nLine 3"; //Défini le méssage du mail
      $message = wordwrap($message, 70, "\r\n"); //Si le message atteint les 70 charactére fait un saut de ligne

// Envoi du mail
      mail('jay-juana@outlook.fr', 'Mon Sujet', $message);
        
//Appel a la base données
      include('Connexion_bdd.php');
    
      $securiter_base = 3;//défini un niveau de droit de base
        
        //Insert le mail et mot de passe dans la base de données
        $ins = $bdd->prepare('INSERT INTO liste_users(Email, Password, Nv_droit) VALUES(?, ?, ?)');
        $ins->execute(array(
        $_POST['email'],
        $_POST['mdp'],
        $securiter_base
            
        ));
        //Récupére L'id de l'utilisateur
        $sel = $bdd->prepare('SELECT ID FROM liste_users WHERE email = ?');
        $sel->execute(array(
        $_SESSION['email']
        ));
        $data = $sel->fetch();
        
      $_SESSION['ID'] = $data['ID'];//Défini une variable de session
        
    header('Location: profile.php'); //Redirige vers la page de profile
        
}
?>
<?php
 //Variable du formulaire
  /*      $email = $_POST['email'];
        $prenom = $_POST['prenom'];
        $nom = $_POST['nom'];
        
        //Mail
        $Objet = 'Confirmation de la création du compte';
        $contenu = '<html>
<head>
   <title>Vous avez réservé sur notre site ...</title>
</head>
<body>
   <p>Votre employer sous le nom de '.$nom.' Vous a envoyer une demande de droit</p>
   <p>Liens vers le panel dadministration</p>
</body>
</html>'; 
        $entetes = 
'Content-type: text/html; charset=utf-8' . "\r\n" .
'From: jay-juana@outlook.fr' . "\r\n" .
'Reply-To: jay-juana@outlook.fr' . "\r\n" .
'X-Mailer: PHP/' . phpversion();

    mail($email, $Objet, $contenu, $entetes);    
    


*/
?>