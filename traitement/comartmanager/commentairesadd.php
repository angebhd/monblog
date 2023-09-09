<?php
if (isset($_POST['pseudo']) AND isset($_POST['commentaires']) AND isset($_GET['idart']))
{
    include('../admin/bdd/connecting.php');
    $idart=$_GET['idart'];
    $pseudo = htmlspecialchars($_POST['pseudo']);
    $commentaires = htmlspecialchars($_POST['commentaires']);
    $mail = htmlspecialchars($_POST['mail']);
    $siteweb = htmlspecialchars($_POST['siteweb']);

    $addcom = $badon -> prepare ('INSERT INTO commentaires (idart,pseudo,commentaires,mail,siteweb,date)
    VALUES(?,?,?,?,?,NOW())');
    $addcom->execute (array($idart,$pseudo,$commentaires,$mail,$siteweb));
    header ("Location: $_SERVER[HTTP_REFERER]" );}
else{
    header ("Location: $_SERVER[HTTP_REFERER]" );
}
/* Fichier aidant à ajouter automatiquement des commentaires */
?> 