<?php /*  
Avant d'arriver ici c'est mieux de proposer un page de prévisualisation de l'article

*/
if (isset($_POST['valider'])) 
{
    if(isset($_POST['titre']) AND isset($_POST['categorie']) AND isset($_POST['scategorie']) AND isset($_POST['contenuabbr']) AND isset($_POST['contenu']))
    {
        include('../admin/bdd/connecting.php');
        $titre=$_POST['titre'];
        $categorie=$_POST['categorie'];
        $scategorie=$_POST['scategorie'];
        $contenuabbr=$_POST['contenuabbr'];
        $contenu=$_POST['contenu'];
        $req=$badon -> prepare ('INSERT INTO articles (titre,categorie,scategorie,contenuabbr,contenu,date) VALUES (?,?,?,?,NOW())');
    $req->execute(array($titre,$categorie,$scategorie,contenuabbr,contenu));
    }
     
    else {}
}
?>