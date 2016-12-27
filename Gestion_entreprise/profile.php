Seconde Step !
<?php 
session_start();

//Verifie que la variable de SESSION existe 
if (isset($_SESSION['email'])) {
    ?>
<form method="post">

    <input type="text" name="Nom" placeholder="Votre Nom">
    <input type="text" name="Prenom" placeholder="Votre Prenom">
    <input type="text" name="Sexe" placeholder="Votre sexe">
    <input type="text" name="Adresse" placeholder="Votre adresse physique">
    <input type="text" name="Telephone" placeholder="Votre numero de téléphone">
    
    <button type="submit">Envoyer !</button>
</form>
<?php
}
//Verifie que le champ n'est pas vide
if (!empty($_POST['Nom']) AND !empty($_POST['Prenom']) AND !empty($_POST['Sexe']) AND !empty($_POST['Adresse']) AND !empty($_POST['Telephone'])) {
    
    include('Connexion_bdd.php');//Connexion a la base de données
    
    //Insert dans la table les éléments du formulaire
    $ins = $bdd->prepare('INSERT INTO users_coordonnees (Nom, Prenom, Sexe, Adresse, Telephone, ID_users) VALUES (?, ?, ?, ?, ?, ?)');
    $ins->execute(array(
      
      $_POST['Nom'],
      $_POST['Prenom'],
      $_POST['Sexe'],
      $_POST['Adresse'],
      $_POST['Telephone'],
      $_SESSION['ID']
    ));
header('Location: Connexion.php');
}

?>
