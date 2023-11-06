<style>
    body {
        font-family: 'Arial', sans-serif;
    }

    table {
        max-width: 1280px;
		min-width: 800px;
        border-collapse: collapse;
        margin-top: 20px;
		margin:auto;
    }

    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #f2f2f2;
    }

    td {
		text-align:center;
        background-color: #fff;
    }

    td img {
        max-width: 100%;
        height: auto;
    }

    td.barcode-cell {
        padding: 0;
        text-align: center;
    }

    .barcode {
        height: 50px; /* Ajuste conforme necessário */
    }
</style>
<?php
require 'vendor/autoload.php';

use Picqer\Barcode\BarcodeGeneratorHTML;

// Substitua as informações de conexão com seu banco de dados
$servername = "localhost";
$username = "zig";
$password = "zig";
$dbname = "zig";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

$query = "SELECT * FROM produtos ORDER BY nome";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo "<table border='1'>
            <thead>
                <tr>
                    <th>Produto</th>
                    <th>Preço</th>
                    <th>Código de Barras</th>
                </tr>
            </thead>
            <tbody>";

    while ($row = $result->fetch_assoc()) {
        $code = $row['codigo'];
        $name = $row['nome'];
        $price = $row['preco'];

        // Gera o código de barras HTML
        $generator = new BarcodeGeneratorHTML();
        $barcodeHTML = $generator->getBarcode($code, $generator::TYPE_CODE_128);

        echo "<tr>
                <td>$name</td>
                <td>R$ " . number_format($price, 2, ',', '.') . "</td>
                <td style='margin:auto'>$barcodeHTML</td>
            </tr>";
    }

    echo "</tbody></table>";
} else {
    echo "0 resultados";
}

$conn->close();
?>