<?php
// salvar_status_pagamento.php

// Conecte-se ao banco de dados (substitua com suas configurações)
$servername = "localhost";
$username = "zig";
$password = "zig";
$dbname = "zig";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifique a conexão
if ($conn->connect_error) {
    die("Falha na conexão com o banco de dados: " . $conn->connect_error);
}

// Obtém o status do pagamento do POST
$statusPagamento = isset($_POST['status_pagamento']) ? intval($_POST['status_pagamento']) : 0;
if(!isset($_POST['id'])){
	echo 'Erro ao Execultar - Sem ID!';
	exit();
}
$id = $_POST['id'];
if($statusPagamento == 0) {
	$sql = "UPDATE fiadores SET checkbox = $statusPagamento, data_pagamento=NULL WHERE id = '$id'"; 
}else{
$sql = "UPDATE fiadores SET checkbox = $statusPagamento, data_pagamento=NOW() WHERE id = '$id'";
}
if ($conn->query($sql) === TRUE) {
    echo "Status do pagamento atualizado com sucesso!";
} else {
    echo "Erro ao atualizar o status do pagamento: " . $conn->error;
}

// Fecha a conexão
$conn->close();
?>
