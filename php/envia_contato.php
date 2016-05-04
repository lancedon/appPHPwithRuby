<script src="../js/jquery.js"></script>
<script src="../js/jquery-cookie.js"></script>
<script src="../js/registra.js"></script>

<?php
include "menu.php";

include "db/db.php";

try {
    //connect to database
    $pdo = new PDO("mysql:host=$DBhost;dbname=$DBname", $DBuser, $DBpass);

} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}

$nome = $_POST['nome'];
$email = $_POST['email'];


//Start transaction
$pdo->beginTransaction();

//get the guid
$guid = $_COOKIE['GUID'];

$query = "
       insert into GUID_EMAIL 
                  (email, guid)
                  VALUES 
                  ('$email',  $guid)";

try {
    $statement = $pdo->query($query);
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
    exit(1);
}



$query = "
       insert into contatos 
                  (nome, email, created_at)
                  VALUES 
                  ('$nome','$email', NOW() )";

try {
    $statement = $pdo->query($query);
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
    exit(1);
}

//commita
$pdo->commit();

echo "Enviado com sucesso ";

?>