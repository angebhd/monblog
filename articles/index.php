<!DOCTYPE html>
<html>
<?php include('../traitement/admin/bdd/connecting.php');?>
<?php $idart=$_GET['id']; /**Id doit etre envoyer par la method _GET */
?>
<head>
    <meta charset="UTF8">
    <link rel="stylesheet" href="/style/css.css">
    <meta name="viewport" content="width=device-width"/>
    <link rel="icon" type="image/jpg" href="/favicon.ico.jpg">
    <title><?php
    $reqtitre=$badon->prepare ('SELECT titre FROM articles WHERE id=?');
    $reqtitre -> execute (array($idart));
    $reptitre=$reqtitre->fetch();
    echo $reptitre['titre'];
    $reqtitre->closeCursor ();
    ?></title>
</head>
<body>
    <header><?php include_once ('../commun/header.php')?></header>
   <div class= "articlediv"><section class= "article"><?php include_once ('../traitement/affichage/articles.php');?>
        <aside ><?php include_once ('../traitement/affichage/commentaires.php');?></aside>
    </section></div>
    <footer><?php include_once ('../commun/footer.php')?></footer>
</body>

</html>