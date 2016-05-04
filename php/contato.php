<script src="../js/jquery.js"></script>
<script src="../js/jquery-cookie.js"></script>
<script src="../js/registra.js"></script>
<?php include "menu.php"; ?>
<form action="envia_contato.php" method="post">
    <label>
        Nome:
    </label>
    <input type="text" name="nome"><br>
    <label>
        E-mail:
    </label>
    <input type="text" name="email"><br>
    <input type="submit" value="Enviar">

</form>