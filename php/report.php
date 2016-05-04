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

$query = "
      SELECT 
            DISTINCT
            CONCAT('(' , A.GUID , ') ') AS GUID,
            (SELECT EMAIL FROM GUID_EMAIL WHERE GUID = A.GUID LIMIT 1) AS MAIL,
            A.URL,
            DATE_FORMAT(A.TS_CREATED, '%b %d %Y %H:%i:%s %p') AS TS_CREATED
         FROM
            LOG A 
         ORDER BY 
            TS_CREATED  DESC
         LIMIT 50            
      ";

try {
    $statement = $pdo->query($query);
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
    exit(1);
}


?>

<table border="1" cellpadding="5">

    <tr>
        <td>Visitante</td>
        <td>Página</td>
        <td>Horário</td>
    </tr>

<?php

for($col=0; $row = $statement->fetch(PDO::FETCH_ASSOC);$col++ ){


echo "

    <tr>
        <td>".$row['GUID'].$row['MAIL']."</td>
        <td>".$row['URL']."</td>
        <td>".$row['TS_CREATED']."</td>
    </tr>

";

}


?>

</table>
