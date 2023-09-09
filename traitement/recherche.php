<div class="barresearch">
    <form action="" method="POST">
<label for="search"></label> <input type="search" name="search" placeholder = "Taper votre recherche">
<label for="envoyer"><img src="" alt="" /></label> <input type="submit" name="envoyer" value = "Rechercher">
    </form>

</div>
<?php
if(isset($_POST['search']) /* Si c'est pas vide et si ça existe */)
{
$search=htmlspecialchars($_POST['search']); /**Verifier si le OR ci dessous est logique */
$rsearch=$badon->query('SELECT titre,contenuabbr FROM articles WHERE titre OR contenuabbr LIKE"%'.$search.'%" ORDER BY titre');
$result=5;
if ($result > 0) { echo 'Résultat(s) de la recherche : '.$_POST['search'];
    while ($affsearch=$rsearch -> fetch()) {
 
    /* ON affiche le resultat de la recherche 
    verifier la syntaxe pour integre l'image
    */
    
    ?><br/><br/>
    <p id="searchtitre"><?php echo ($affsearch['titre']); ?></p>
    <img src = "/article/<?php echo ($affsearch['titre']);?>/<?php echo ($affsearch['titre']);?>.jpg" alt = "<?php echo ($affsearch['titre']);?>">
    <p id="searchcontenuabbr"><?php echo ($affsearch['contenuabbr']); }?></p>
    <?php 
    $rsearch->closeCursor();
}
}
?>
