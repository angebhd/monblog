<?php
/* Si la variable idart existe, on execute le code permettant d'afficher les commentaire.
    idart= id de l'article dans la table des articles
    Attention aux failles !!!!
verifier que la variable idart éxiste et qu'elle n'est pas vide pour executer le code
*/

?>
<?php
if (isset($idart)){
 
$commentaires = $badon -> prepare('SELECT * FROM commentaires WHERE idart=? ORDER BY date DESC LIMIT 0, 10');
$commentaires->execute (array($idart));
while ($affcom=$commentaires -> fetch()) { ?>
  <div class="affcom"> <p class="compseudo"><?php echo ($affcom['pseudo']);?></p>
    <p class="comcontenu"><?php echo($affcom['commentaires']);?></p>
    <p class="comdate"><?php echo($affcom['date']);?></p></div>
    <?php
   }$commentaires->closeCursor();
}?>