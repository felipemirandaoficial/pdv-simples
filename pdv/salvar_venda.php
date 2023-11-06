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

// Recupere os dados enviados via POST
$products = json_decode($_POST['products'], true);
$totalAmount = $_POST['totalAmount'];

// Informações adicionais
$idUsuario = 83;
$idMeioPagamento = $_POST['meiopagamento'];
$idEmpresa = 1;

// Valores padrão
$valorRecebido = $totalAmount; // Defina o valor recebido conforme necessário
$valorEntrada = 0; // Defina o valor de entrada conforme necessário

// Calcular troco
$troco = 0;

// Gerar código de venda único
$codigoVenda = '';
$id_produto = 1;
$quantidade = count($products);

// Inserir uma entrada na tabela vendas
$sqlVenda = "INSERT INTO vendas (id_usuario, id_meio_pagamento, id_empresa,id_produto,preco,quantidade, valor, valor_recebido, troco, codigo_venda, created_at) 
             VALUES ($idUsuario, $idMeioPagamento, $idEmpresa, $id_produto, '0', $quantidade , $totalAmount, $valorRecebido, $troco, '$codigoVenda', NOW())";

if ($conn->query($sqlVenda) === TRUE) {
    echo "Venda salva com sucesso!";
} else {
    echo "Erro ao salvar venda: " . $conn->error;
}

// Feche a conexão
$conn->close();
?>