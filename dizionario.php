<!DOCTYPE html>
<html>
    <body>
        Puoi inserire nuove parole al dizionario compilando il form<br>
        altrimenti inserisci solo la parola da ricercare e premi consulta<br>
        
        <br><br>
        <form method="POST" action="dizionario.php">
            parola<br>
            <input type="text" name="parola" id="parola"><br>
            sinonimo<br>
            <input type="text" name="sinonimo" id="sinonimo"><br>
            contrario<br>
            <input type="text" name="contrario" id="contrario"><br><br>
            <input type="submit" value="invio" name="btn1">
            <input type="submit" value="consulta" name="btn2">


        </form>
    </body>
    <?php
        if(isset($_POST['btn1']))
        {
            include("aprireConnessione.php");
  
            $parola=$_POST['parola'];
            $sinonimo=$_POST['sinonimo'];
            $contrario=$_POST['contrario'];
  
            $connessione->query("INSERT INTO $pdb (pChiave,sinonimo,contrario) values ('$parola','$sinonimo','$contrario')");
  
            echo 'la nuova parola è stata inserita correttamente';
            include("chiudiConnessione.php");
            
        }


        else if(isset($_POST['btn2']))
        {
            include("aprireConnessione.php");
            $parola = $_POST['parola'];
           // echo $parola;
            $risultato = mysqli_query($connessione, "SELECT * FROM $pdb   WHERE pChiave = '$parola' ");
            while($consulta = mysqli_fetch_array($risultato))
            {
    
                echo $consulta['pChiave'];
                echo '<br>';
                echo $consulta['sinonimo'];
                echo '<br>';
                echo $consulta['contrario'];
                echo '<br>';
                
            }


            include("chiudiConnessione.php");
        }
       
    ?>
</html>