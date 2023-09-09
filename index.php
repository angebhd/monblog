<!DOCTYPE html>
<html>

<head>
<meta charset="UTF8">
    <link rel="stylesheet" href="/style/css.css">
    <meta name="viewport" content="width=device-width"/>
    <link rel="icon" type="image/jpg" href="/favicon.ico.jpg">
    <title>Acceuil - NoviciusTech vous accompagne dans votre passion d'ingenieur de l'inforrmatique et l'electonique</title>
</head>

<body>
    <header><?php include_once ('commun/header.php');?></header>
    <div class="container">
        <div class="actualité">
            <!-- Bande d'actulalité-->
        </div>
        <section>
            <!-- brève présentation -->
            <h3>Presentation de noviciustech.com</h3>
            <p>Noviciustech se veut être un blog dédié à la technologie dans son ensemble, il se base sur ses deux 
                principaux piliers qui sont l’électronique est l’informatique.</p>
            <p>Que vous soyez nul, débutant, ou même professionnel le contenu de ce blog vous aidera dès votre premier 
                pas dans le monde de la tech jusqu’à vos projets professionnels.</p>
            <p>Il pourra vous servir d’aide-mémoire, de guide ou encore être la réponse à vos questions.</p>
            <p>Vous trouverez ici des articles clairs, des cours à venir sur la technologie dans son ensemble ainsi que
                 les biographies des grands qui ont contribué ou qui contribuent au développement de la technologie.</p>
            <aside>
                <!-- Articles le plus lus-->
                <?php $artlu = $badon -> query ('SELECT * FROM articles ORDER BY nbrevues DESC LIMIT 0,5');
                while ($artlus =$artlu -> fetch()) {
                    ?><div class="boxsug">
                    <p class="img"><img src="articles/img/<?php echo ($artlus['titre']);?>" alt="<?php echo ($artlus['titre']);?>"></p>
                    <p class="titres"><?php echo ($artlus['titre']);?></p>
                    <p class="categorie"><?php echo($artlus['categorie']);?></p>
                    <p class="contenuabbr"><?php echo($artlus['contenuabbr']);?></p></div>
              <?php }$artlu->closeCursor();?>
            </aside>
            <aside>
                <h3>Articles recents</h3>
                <!-- Articles récents-->
                <?php $artlu = $badon -> query ('SELECT * FROM articles ORDER BY date DESC LIMIT 0,4');
                while ($artlus =$artlu -> fetch()) {
                    ?><div class="boxsug">
                    <p class="img"><img src="articles/img/<?php echo ($artlus['titre']);?>" alt="<?php echo ($artlus['titre']);?>"></p>
                    <p class="titres"><?php echo ($artlus['titre']);?></p>
                    <p class="categorie"><?php echo($artlus['categorie']);?></p>
                    <p class="contenuabbr"><?php echo($artlus['contenuabbr']);?></p></div>
              <?php }$artlu->closeCursor();?>
            </aside>
        </section>
    </div>
    <footer><?php include_once ('commun/footer.php');?></footer>
</body>
</html>