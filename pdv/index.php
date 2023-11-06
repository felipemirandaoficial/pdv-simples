<?php
error_reporting(E_ALL ^ E_NOTICE); 
ini_set('session.gc_maxlifetime', 6600);
session_set_cookie_params(6600);
session_start();
$is_test = true;
?>
<link rel="icon" href="./favicon.ico" type="image/icon">
<header class = "fundo" style="color: Black;background-color: gold">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<link rel="stylesheet" href="./css/stype.css">

<title>PDV - by F.Miranda</title>
<h2>PDV - Simples</h2>
</header>
<?php

if (is_file('back/background.jpg')) {
	$back = "background-color: black;background-image: url('back/background.jpg')";
}

?>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Notificações</title>
    <link rel="preload" href="css/home/style.css" as="style">
    <link rel="preload" href="css/home/script.js" as="script">
    <link rel="stylesheet" href="css/home/style.css">
</head>

<body class="chuvaConteiner" style="<?=$back?>" >
</body>

<body>
<br>
<header style="padding: 1px; margin: 2px;">
	
	<img style="background-color: rgba(255,255,255,0.7);border-radius: 12px; margin-left: 25px" src="./css/menu.png" width=42 alt="Opções" id="btnConf">
</header>
<style>
a:link {
    font-size: 12px;
	cursor: pointer;
}
</style>

<div id="menuconf" class="menu effect">
        <nav>
			<div style="text-align: right;">
                <button id="btnClose2">X</button>
            </div>
            <ul>
					<li style="color:white">Menu</li>
					<li><a style="font-size: 15px"  href="#">Em Breve</a></li>
			</ul>
        </nav>
</div>

<script>
const menuSize = '350px';
let openconf = false;
let openmenu = false;

document.querySelector('#btnConf').addEventListener('click', e => {
	openconf = !openconf;
    toggleConf();
})
document.querySelector('#btnClose2').addEventListener('click', e => {
    openconf = false;
    toggleConf();
})

document.querySelector('#btnMenu').addEventListener('click', e => {
	openmenu = !openmenu;
    toggleMenu();
})
document.querySelector('#btnClose').addEventListener('click', e => {
    openmenu = false;
    toggleMenu();
})

function toggleConf() {
    if (openconf) {
		open = false;
        document.querySelector('#menuconf').style.marginLeft = 0;
        return;
    }
    document.querySelector('#menuconf').style.marginLeft = `-${menuSize}`;
}
function toggleMenu() {
    if (openmenu) {
		open = false;
        document.querySelector('#menu').style.marginLeft = 0;
        return;
    }
    document.querySelector('#menu').style.marginLeft = `-${menuSize}`;
}
</script>
</body>

<head class="fundo2">

<table border=0 style="padding: 15px 5px 5px; align-items: center; color: white; text-align:center; width: 30%; !important;margin: auto; height: auto; !important;">
<tr>
<br>
	<table border=0 style="padding: 10px 0px;align-items: center; color: white; text-align:center; width: 40%; !important;margin: auto; height: auto; !important;">
		<tr>
		<td>
		<form method="POST" action="pdv.php" > 
		<input type="text" hidden name="type" value="saida">
		<button type="submit" class="button2"><strong>PDV</strong></button>
		</form>
		</td>
		<td>
		<form action="../zigmaster/home"> 
			<button type="submit" class="button2"><strong>Gestão de Vendas</strong></button>
		</form>
		</td>
		<td>
		<form target='_blank' action="gerar_lista.php"> 
			<button type="submit" class="button2"><strong>Imprimir Codigo de Barras</strong></button>
		</form>
		</td>
		</tr>	
	</table>
</table>
</body>
<br>
<style>
	.back {
	background-image: radial-gradient(ellipse at top, #00FF00, #4CAF50),
            radial-gradient(ellipse at bottom, #4CAF50, #00FF00);
	background-size: contain;
	background-repeat: no-repeat;
	}
</style>