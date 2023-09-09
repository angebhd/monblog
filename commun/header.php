 <div class="headerdiv">
    <p class="headnamelogo"><strong>NOVICIUSTECH.COM</strong></p>
         <div class="headproverbes"> 
         <?php
         $badon = new PDO('mysql:host=localhost;dbname=noviciusdatabase','root','');
         $badon->exec("set names utf8");
            $idprvb=4;
            $idprv=rand(1,$idprvb);
            $req_prov= $badon -> prepare ('SELECT auteur,proverbe FROM proverbes WHERE id=?');
            $req_prov -> execute(array($idprv));
            while ($proverbe=$req_prov->fetch()) {?>
              <p class = "proverbe"><?php echo ($proverbe['proverbe']) ?></p>
              <p class = "auteur"><?php echo ($proverbe['auteur']) ?>    </p>
           <?php } ?>
          </div>
    
   <!--  Copy ewuti kobongisa, kosala, na kolukaphp-->
    <div class="barresearch">
    <form action="" method="POST">
<input type="search" name="search" placeholder = "Taper votre recherche">
<input class = "btn" type="submit" name="envoyer" value = "Rechercher">
    </form>

</div>

 <nav class="header">
         <ul>
                <li class="lienmenu"><a href="/">Acceuil</a></li>
                <li class="lienmenu"><a href="/articles/articles.php">Articles</a></li>
           <!-- <li class="lienmenu"><a href="">Cours</a></li>
                <li class="lienmenu"><a href="">Catégorie</a></li>
                <li class="lienmenu"><a href="">Forum</a></li>  -->
                <li class="lienmenu"><a href="/a-propos">A-propos</a></li>
            </ul>
    </nav>
</div>