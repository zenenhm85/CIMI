<?php
	session_start();
	
	$db_host = "localhost";
    $username="root";
    $password="";
    $db='cimi';
    $sdb =mysqli_connect($db_host,$username,$password,$db);

    $senha = $_POST['Senha'];
    $senhaa = $_POST['Senhaa'];

    $query = "SELECT * FROM user WHERE nome='admin' and senha='$senhaa'";
    $lista = mysqli_query($sdb, $query);
    $f=mysqli_fetch_array($lista);
    if(count($f)!=0){
        $query = "UPDATE user SET senha = '$senha' WHERE nome='admin'";
        $lista2 = mysqli_query($sdb, $query);
        if($lista2){
            echo "1";
        }
        else{
            echo "0";
        }
        
    }
    else{
        echo "0"; 
    }

?>