<style>
	.button {
    cursor: pointer;
	background-color: #4CAF50;
	width:  180px;
	height: 80px;
	border-radius: 4px;
	font-size: 23px;
	border: 2px solid white;
	color: white;
	text-align: center;
	text-decoration: none;	
	margin-top: 15px;
}
.button2 {
	cursor: pointer;
	background-color: #4CAF50;
	width:  180px;
	height: 80px;
	border-radius: 4px;
	font-size: 23px;
	border: 2px solid white;
	color: white;
	text-align: center;
	text-decoration: none;
}
.fundo {
		
        color: White;
		align-items: center;
        background-color: white;
        font-size: 20px;
        text-align: center;
        font-weight: bold;
		background-color: green;
		margin-top: 15px;
		display: solid;
		width: auto;
		margin-left: auto;
		margin-right: auto;
		padding: 5px;
}
.fundo2 {
        color: white;
        font-size: 20px;
		align-items: center;
        text-align:center;
        font-weight: bold;
		margin-left: auto;
		margin-right: auto;
		width: auto;
		display: solid;
		align-items: center;
		margin-top: 5px;
        margin-before: 5px;
		padding: 1em;
}
<?php
error_reporting(E_ALL ^ E_NOTICE); 
session_save_path("../../tmp/");
ini_set('session.gc_maxlifetime', 6600);
session_set_cookie_params(6600);
session_start();
$Auth=$_SESSION['Auth'];
?>
</style>

<header class = "fundo">
<title>API Simasul</title>
<h3>Falha ao Gerar Pedido!</h3><br>
<h4><?php echo $_SESSION['erro-email']; ?></h4><br>
</header>
<br>
<html class = "fundo2">
<img src="./../img/error.png" style= "width: 220px;"> <br><br>
<form method="get" action="index.php" >
<button class="button2" name="auth" value='<?=$Auth?>' type="submit">Voltar</button>
</form>
</html>

