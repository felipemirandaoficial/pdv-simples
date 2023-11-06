<?php
// Substitua as informações de conexão pelo seu próprio
$servername = "localhost";
$username = "zig";
$password = "zig";
$database = "zig";

// Cria a conexão
$conn = new mysqli($servername, $username, $password, $database);

// Checa a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Query SQL para buscar sugestões
$sql = "SELECT nome FROM clientes where deleted_at is NULL order by nome";
$result = $conn->query($sql);

// Verifica se a consulta retornou resultados
if ($result->num_rows > 0) {
    // Inicializa um array para armazenar os nomes dos clientes
    $clientes = array();

    // Percorre os resultados e adiciona os nomes ao array
    while ($row = $result->fetch_assoc()) {
        $clientes[] = $row['nome'];
    }

    // Retorna os nomes dos clientes em formato JSON
    echo json_encode($clientes);
} else {
    // Se não houver clientes, retorna um array vazio em JSON
    echo json_encode(array());
}

// Fecha a conexão com o banco de dados
$conn->close();
?>