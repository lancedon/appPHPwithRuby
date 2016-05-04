<?php

include "db/db.php";

try {
    //connect to database
    $pdo = new PDO("mysql:host=$DBhost;dbname=$DBname", $DBuser, $DBpass);

} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}

//Start transaction
$pdo->beginTransaction();

if(!$_POST['GUID']) {
    //get the max GUID
    $query = "
              select
                MAX(guid) as ID
              from
                LOG
                                    
     ";

    $statement = $pdo->query($query);
    $row = $statement->fetch(PDO::FETCH_ASSOC);
    $ID = $row['ID'] + 1;

}else{

    $ID = $_POST['GUID'];
}

$query = "
       insert into LOG 
                  (GUID, TS_CREATED, URL)
                  VALUES 
                  ($ID, NOW(), '".$_POST['appPath']."')";

try {
    $statement = $pdo->query($query);
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}

//commita
$pdo->commit();

echo $ID;

?>