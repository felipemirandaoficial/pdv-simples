<?php

$host = "localhost";
$user = "root";
$pass = "";
$dbname = "combustivel";
$port = 3306;

$conn = new mysqli($host, $user, $pass);
$sql = "CREATE DATABASE IF NOT EXISTS $dbname";
$conn->query($sql);
$conn->close();
			
$conn = mysqli_connect($host, $user, $pass, $dbname) or trigger_error(mysqli_connect_error(),E_USER_ERROR);
if (!$conn) {
die ("Conexão falhou:". mysqli_connect_error());
}

$sql = "CREATE TABLE IF NOT EXISTS saida (
        id int not null auto_increment, 
        fazenda VARCHAR (128) NOT NULL,
		username VARCHAR (64) NOT NULL,
		maquina VARCHAR (128) NOT NULL,
		horimetro VARCHAR (128) NOT NULL,
		produto VARCHAR (64) NOT NULL,
		litros VARCHAR (32) NOT NULL,
		kg VARCHAR (12) NOT NULL,
		aplicacao VARCHAR (256) NOT NULL,
		grupo VARCHAR (128) NOT NULL,
        obs VARCHAR (128) NULL,
		created datetime,
		modified datetime NULL,
		modified_adm datetime NULL,
		outros VARCHAR (64) NULL,
		status int (8) DEFAULT 0,
		status_2 boolean not null default 0,
		primary key(id)
		) ";
if (mysqli_query ($conn, $sql)) {
} else {
   echo "Erro ao criar tabela:". mysqli_error ($conn);
}

$sql = "CREATE TABLE IF NOT EXISTS entrada (
        id int not null auto_increment, 
        fazenda VARCHAR (128) NOT NULL,
		username VARCHAR (64) NOT NULL,
		maquina VARCHAR (128) NULL,
		horimetro VARCHAR (128) NULL,
		produto VARCHAR (64) NOT NULL,
		litros VARCHAR (32) NOT NULL,
		kg VARCHAR (12) NOT NULL,
		aplicacao VARCHAR (256) NOT NULL,
		grupo VARCHAR (128) NOT NULL,
        obs VARCHAR (128) NULL,
		created datetime,
		modified datetime NULL,
		modified_adm datetime NULL,
		outros VARCHAR (64) NULL,
		status int (8) DEFAULT 0,
		status_2 boolean not null default 0,
		primary key(id)
		) ";
if (mysqli_query ($conn, $sql)) {
} else {
   echo "Erro ao criar tabela:". mysqli_error ($conn);
}

$sql = "CREATE TABLE IF NOT EXISTS fazendas (
        id int not null auto_increment, 
        nome VARCHAR (128) NOT NULL,
        obs VARCHAR (128) NULL,
		litros VARCHAR (128) NULL,
		tipo VARCHAR (128) NULL,
		created datetime NULL,
		primary key(id)
		)";
if (mysqli_query ($conn, $sql)) {
} else {
   echo "Erro ao criar tabela:". mysqli_error ($conn);
}

$sql = "CREATE TABLE IF NOT EXISTS maquinas (
        id int not null auto_increment, 
        nome VARCHAR (128) NOT NULL,
		placa VARCHAR (128) NULL,
		litros VARCHAR (128) NULL,
		tipo VARCHAR (128) NULL,
        obs VARCHAR (128) NULL,
		created datetime NULL,
		primary key(id)
		)";
if (mysqli_query ($conn, $sql)) {
} else {
   echo "Erro ao criar tabela:". mysqli_error ($conn);
}

$sql = "CREATE TABLE IF NOT EXISTS produtos (
        id int not null auto_increment, 
        nome VARCHAR (128) NOT NULL,
        obs VARCHAR (128) NULL,
		created datetime NULL,
		primary key(id)
		)";
if (mysqli_query ($conn, $sql)) {
} else {
   echo "Erro ao criar tabela:". mysqli_error ($conn);
}



try {
    $conn = new PDO("mysql:host=$host;port=$port;dbname=" . $dbname, $user, $pass);
    //echo "Conexão com banco de dados realizado com sucesso!";
} catch (Exception $ex) {
    echo "Erro: Conexão com banco de dados não realizado com sucesso!";
}

?>
