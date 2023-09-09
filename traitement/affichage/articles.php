<?php

/* Si la variable idart existe, on execute le code permettant d'afficher les articles.
    idart= id de l'article dans la table des articles
    Attention aux failles !!!!
verifier que la variable idart éxiste et qu'elle n'est pas vide pour executer le code
*/ 
?>
<?php
if (isset($idart)){
$verid= $badon -> query ('SELECT id FROM articles');
while ($ver=$verid -> fetch()) {
if ($ver['id']=$idart) {
/**
 * Ici nous verifions si l'id existe dans la bdd, si elle n'existe pas, on affiche rien
 */
$articles = $badon -> prepare('SELECT * FROM articles WHERE id=?');
$articles->execute (array($idart));
while ($affart=$articles -> fetch()) { 
   ?>
   <h1 id="arttitre"><?php echo ($affart['titre']);?></h1>
    <div class= "catscat"><p id="artcategorie"><?php echo($affart['categorie']);?>|</p><p id="artscategorie"><?php echo($affart['scategorie']);?></p></div>
    <p class="imgart"><img src="img/<?php echo ($affart['titre']);?>.jpg" alt="<?php echo ($affart['titre']);?>" ></p>
    <div class="artcontenu"><?php echo($affart['contenu']);?></div>

    <div class='suggestion'>
<?php 
$catart=$affart['categorie'];
$sug = $badon -> prepare ('SELECT * FROM articles WHERE categorie=? ORDER BY nbrevues DESC LIMIT 0,2');
$sug->execute (array($catart));
while ($suge =$sug -> fetch()) {
    ?><div class="boxsug">
    <p class="imgsug"><img src="img/<?php echo ($suge['titre']);?>" alt="<?php echo ($suge['titre']);?>"></p>
    <p class="titresug"><?php echo ($suge['titre']);?></p>
    <p class="categoriesug"><?php echo($catart);?></p>
    <p class="contenuabbr"><?php echo($suge['contenuabbr']);?></p></div>
    <?php
}
?>

    </div>

    <form action="/traitement/comartmanager/commentairesadd.php?idart=<?php echo ($idart);?>" method = 'post'><fieldset><legend>Poster un commentaire</legend>
<div><p class='pseudo'><input type="text" placeholder="Pseudo" name="pseudo" required></p>
<p class='mail'><input type="mail" placeholder="nom@mail.abc" name="mail" ></p>
<p class='commentaires'><textarea placeholder="Commentaires" name="commentaires" required ></textarea></p>
<p class=site><input type="text" placeholder="www.monsite.com" name="siteweb" ></p>
<input type="submit" value="Commenter"></div>
</fieldset></form>

    <?php }
    $articles->closeCursor();
break;}
}    
}
else{
    echo ' Page web non existante, <a href = "/">revenir à l\'acceuil </a>';
}
?>