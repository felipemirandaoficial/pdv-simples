<?php
// Conexão com o banco de dados (substitua as informações conforme necessário)
$servername = "localhost";
$username = "zig";
$password = "zig";
$dbname = "zig";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Consulta SQL para obter as vendas fiado nos últimos 60 dias
$query = "SELECT * FROM fiadores WHERE (data >= DATE_SUB(CURDATE(), INTERVAL 60 DAY) or checkbox=0 or checkbox is null) order by data";

$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatório de Vendas Fiado</title>
    <!-- Adicione seus estilos CSS aqui -->
</head>
<style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: solid;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            color: #333;
            text-align: center;
        }
		h1, h3 {
			display: block;
		}
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
			text-align:center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4caf50;
            color: white;
        }

        tbody tr:hover {
            background-color: #f5f5f5;
        }

        input[type="checkbox"] {
            transform: scale(1.5);
        }
</style>
<body>


<?php if ($result && mysqli_num_rows($result) > 0) { ?>
<h1>Relatorio de vendas Fiado (60 dias)</h1>
<table border="1">
    <thead>
        <tr>
            <th>Nome</th>
            <th>Valor</th>
            <th>Data da Compra</th>
            <th>Data do Pagamento</th>
            <th>Pagamento Confirmado</th>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($row = $result->fetch_assoc()) {
			$mydata = date('d/m/Y - H:i',strtotime($row['data']));
			$datapag = (isset($row['data_pagamento'])) ? "<h4 style='color:green'>" . date('d/m/Y - H:i',strtotime($row['data_pagamento'])) . "</h4>" : '<h4 style="color:red">Em Divida<h4>';
            echo "<tr>";
            echo "<td>{$row['cliente_id']}</td>";
            echo "<td>R$ {$row['valor']}</td>";
            echo "<td>$mydata</td>";
            echo "<td id='row_" . $row['id'] . "'>$datapag</td>";
			if(isset($row['checkbox']) and $row['checkbox'] == 1){
				 echo "<td><input type='checkbox' id='pagamento_confirmado_" . $row['id'] . "' name='pagamento_confirmado_" . $row['id'] ."' checked onchange='salvarStatusPagamento(this,{$row['id']})'></td>";
			}else{
				echo "<td><input type='checkbox' id='pagamento_confirmado_" . $row['id'] . "' name='pagamento_confirmado_" . $row['id'] ."' onchange='salvarStatusPagamento(this, {$row['id']})'></td>";
			}
            echo "</tr>";
        }
        ?>
    </tbody>
</table>
<?php } else { ?>
<h3>Nenhum resultado encontrado.</h3>

<?php } ?>


<script src="../zigmaster/public/assets/js/core/jquery.min.js"></script>
<script>
	function obterDataAtualFormatada() {
		var dataAtual = new Date();

		// Obtém os componentes da data
		var dia = pad(dataAtual.getDate(), 2);
		var mes = pad(dataAtual.getMonth() + 1, 2); // Os meses começam do zero, então adicionamos 1
		var ano = dataAtual.getFullYear();

		// Obtém os componentes da hora
		var horas = pad(dataAtual.getHours(), 2);
		var minutos = pad(dataAtual.getMinutes(), 2);

		// Formata a data no formato desejado
		var dataFormatada = dia + '/' + mes + '/' + ano + ' - ' + horas + ':' + minutos;

		return dataFormatada;
	}

	// Função auxiliar para garantir que os números tenham dois dígitos
	function pad(numero, tamanho) {
		var str = numero.toString();
		while (str.length < tamanho) {
			str = '0' + str;
		}
		return str;
	}
	
    function salvarStatusPagamento(checkbox, id) {
        var statusPagamento = checkbox.checked ? 1 : 0;
        var url = 'salvar_status_pagamento.php';
        $.ajax({
            type: 'POST',
            url: url,
            data: { status_pagamento: statusPagamento,id: id },
            success: function(response) {
                console.log(response);
				var dataFormatada = obterDataAtualFormatada();
				if(statusPagamento == 1){
					document.getElementById('row_' + id).innerHTML = '<h4 style="color:green">' + dataFormatada + '</h4>';
				}else{
					document.getElementById('row_' + id).innerHTML = '<h4 style="color:red">Em Dívida</h4>';
				}
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log('Erro ao fazer a solicitação AJAX:', textStatus, errorThrown);
            }
        });
    }
</script>

</body>
</html>

<?php
// Fecha a conexão com o banco de dados
$conn->close();
?>