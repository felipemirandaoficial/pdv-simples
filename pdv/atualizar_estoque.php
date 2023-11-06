<?php
// Conecte-se ao seu banco de dados MySQL
$servername = "localhost";
$username = "zig";
$password = "zig";
$dbname = "zig";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifique a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

$newQuantity = $_POST['quantity'];
$code = $_POST['code'];

// Inserir uma entrada na tabela vendas
$sqlVenda = "UPDATE produtos SET quantidade = quantidade - $newQuantity WHERE codigo = '$code'";
if ($conn->query($sqlVenda) === TRUE) {
    echo "estoque salvo com sucesso!";
} else {
    echo "Erro ao salvar estoque: " . $conn->error;
}

// Feche a conexão
$conn->close();
?>