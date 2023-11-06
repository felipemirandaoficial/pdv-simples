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

// Obtém o texto da solicitação POST
$texto = $_POST['texto'];

// Query SQL para buscar sugestões
$query = "SELECT * FROM produtos WHERE nome LIKE '%$texto%'";

// Executa a query
$result = $conn->query($query);

// Verifica se a query foi bem-sucedida
if ($result) {
    $sugestoes = array();

    // Obtém os resultados da query
    while ($row = $result->fetch_assoc()) {
        $sugestoes[] = $row['codigo'];
    }

    // Exibe as sugestões no formato desejado
    foreach ($sugestoes as $sugestao) {
        echo "$sugestao";
    }
} else {
    // Trata erros na execução da query
    echo "Erro: " . $conn->error;
}

// Fecha a conexão
$conn->close();
?>