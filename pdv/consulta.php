<?php
// Conecte-se ao banco de dados (ajuste as credenciais conforme necessário)
$servername = "localhost";
$username = "zig";
$password = "zig";
$dbname = "zig";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifique a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Receba o código de barras do parâmetro GET
$barcode = $_GET['barcode'];

// Consulta SQL para obter detalhes do produto com base no código de barras
$sql = "SELECT nome,preco,quantidade FROM produtos WHERE codigo = '$barcode'";
$result = $conn->query($sql);

// Verifique se a consulta retornou resultados
if ($result->num_rows > 0) {
    // Retorne os detalhes do produto em formato JSON
    $row = $result->fetch_assoc();
    echo json_encode($row);
} else {
    // Se nenhum produto for encontrado, retorne um JSON vazio
    echo json_encode(array());
}

$conn->close();
?>