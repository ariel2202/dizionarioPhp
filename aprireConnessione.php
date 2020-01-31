<?php
    $host = "localhost";
    $usuario = "ariel";
    $pass = "12345";
    $nomeDB = "dizionario";

    $pdb = "parola"; 


    error_reporting(0); //non mi mostra errori


    $connessione = new mysqli($host,$usuario,$pass,$nomeDB);
    if($connessione->connect_errno){
        echo 'vi è stato un errore durante la connessione';
        exit();
    }
    /*$bello = "bello";
    $as = $connessione -> query (" SELECT pChiave , sinonimo FROM pdb
        WHERE pChiave = $bello");
        $as -> execute();
    */

?>