<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=0.6">
<link rel="stylesheet" href="styles.css?auth=17102311111121">
<title>PDV - Simples</title>
</head>
<body>
<style>
#logo{
	margin-left: 0; 
	Display: flex;
	box-sizing: border-box;
}
#title{
	text-align: center;
    margin-left: 1px;
    margin-top: 57px;
}
#img_logo{
	border-radius: 12px;
	margin-left: 25px;
}
#btnreload, #btnhome, #btnMenu {
	background-color: rgba(255,255,255,0.7);
	border-radius: 12px; 
	margin-left: 12px;
}
#icons{
	margin:auto; 
	position: absolute;
    left: 50%;
	margin-top: -70px;
}
#tableinicial{
	width: auto; 
	min-width: 800px; 
	align-items: center; 
	font-size: 15px;  
	color: black; 
	border-radius: 12px; 
	text-align:center; 
	margin: auto;
	height: auto !important;
	padding: 8px;
}
#tableinicial input{
	border-radius: 12px;
}
#tableinicial th{
	font-size: 16px;
	color: white; 
}
#tableinicial th,td,tr{
	border-radius: 12px;
	padding: 6px;
}
#table1{
	width: auto; 
	min-width: 375px; 
	align-items: center;  
	color: black; 
	border-radius: 12px; 
	text-align:center; 
	margin-top: 10px;
}
#table2{
	width: auto; 
	min-width: 375px; 
	align-items: center;  
	color: white; 
	border-radius: 12px; 
	text-align:center; 
	margin-top: 30px;
}

#divCentral{
	display: flex;
	width:100%;
	margin: auto;
	margin-top: 8px;
	justify-content: center;
}
#esquerda{
	max-width: 30%;
	margin-right: 15px;
}
#direita{
	max-width: 60%;
}
#baloes{
	Display:flex;
	justify-content: space-around;
}
#box_nome{
	margin-left: 8px;
	background-color: #804fb5;
	text-align: center;
	width: 350px;
	height: 60px;
	border-radius: 12px;
	margin: auto;
}
#box_total{
	background-color:green;
	text-align: center;
	width: 185px;
	height: 100px;
	border-radius: 30% 10%;
	margin: auto;
}

#box_quant{
	margin-left: 8px;
	background-color:red;
	text-align: center;
	width: 120px;
	height: 100px;
	border-radius: 30% 10%;
}
#box_unit{
	margin-left: 8px;
	background-color:blue;
	text-align: center;
	width: 120px;
	height: 100px;
	border-radius: 30% 10%;
}
#total{
	font-weight: bold;
	box-sizing: border-box;
	margin: auto;
    text-align: center;
}
#tabela_vendas{
	Display:flex;
	margin:auto;
	max-height: 252px;
	overflow-y: auto; 
	min-width: 800px;
	max-width: inherit;
}
/* POPUP */
.popup {
  display: none;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: #ffffff;
  padding: 20px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
  z-index: 1000;
  border-radius: 8px;
  max-width: 400px;
  width: 100%;
  text-align: center;
}

.popup h2 {
  color: #333333;
}

.popup select {
  width: 100%;
  padding: 10px;
  margin-top: 10px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 4px;
  box-sizing: border-box;
}

.popup button {
  background-color: #4caf50;
  color: white;
  padding: 10px 15px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.popup button:hover {
  background-color: #45a049;
}

@media (min-width: 750px) and (max-width: 1440px) {
  #tabela_vendas {
    max-height: 252px; /* Ajuste para telas maiores, como 14/17 polegadas */
	position: absolute;
    max-width: 800px;
  }
}
@media (min-width: 1440px) {
  #tabela_vendas {
    max-height: 450px; /* Ajuste para telas maiores, como 18/21 polegadas */
  }
}
@media (min-width: 1920px) {
  #tabela_vendas {
    max-height: 600px; /* Ajuste para telas maiores, como 23/27 polegadas */
  }
}
</style>
	<header>
		<div id='logo'>
			<img src="./img/logo_trans.png" width=120 id="img_logo">
			<div id='title'>
				<h4>PDV - Ponto de Venda</h4>
			</div>
		</div>
		<div id='icons'>
		
				<img src="./css/recarregar.png" title='Recarregar pagina' width=32 alt="btnreload" id="btnreload">
				<img src="./css/home.png" title='Pagina Inicial' width=35 alt="btnhome" id="btnhome">
				<img src="./css/menu.png" title='Imprimir Codigos de Barra' width=35 alt="btnMenu" id="btnMenu">
		</div>
	</header>

<div id='divCentral'>

	<div id='esquerda'>
	
	
	<div id='box_nome'>
		<table id="total">
				<td>
					<span id="nome_unit">---</span>
					<h5>Nome</h5>
				</td>
		</table>
	</div>
	<div id='baloes'>
		<div id='box_quant'>
			<table id="total">
				<td style='margin-top: 2px;'>
					<br><br>
					<span id="quant_intem">0</span>
					<h5>Quantidade</h5>
				</td>
			</table>
		</div>
		<div id='box_unit'>
			<table id="total">
				<td style='margin-top: 2px;'>
					<br><br>
					<span id="preco_unit">R$ 0.00</span>
					<h5>Unitario</h5>
				</td>
			</table>
		</div>
	</div>
	
	<div id='box_total'>
			<table id="total">
			<td style='margin-top: 2px;'>
				<br><br>
					<span >R$ </span><span id="total-amount">0.00</span>
					<h4>Total</h4>
				</td>
			</table>
	</div>
	
	<div id="customerPopup" class="popup">
	  <h2>Escolher Cliente</h2>
		<select id="customerSelect" style="width: 100%;">
		</select>
	  <button onclick="saveSaleFiado()">Salvar Venda</button>
	  <button onclick="ClosePopUp()">Cancelar</button>
	</div>

	<table id='table1' border=0>
			<tr>
				<td>
					<button class="button4" onclick="resetSale()">Nova Venda</button>
				</td>
				<td>
					<button class="button3" onclick="Imprimir()">Cupom</button>
				</td>
			</tr>
	</table>
	
	<table id='table2' border=0>
		<thead>
			<th>Salvar Venda</th>
		</thead>
			<tr>
				<td>
					<button class="button3" onclick="generateReceipt2(1)">Dinheiro</button>
				</td>
				<td>
					<button class="button3" onclick="generateReceipt2(2)">Cartão</button>
				</td>
				<td>
					<button class="button3" onclick="openCustomerPopup()">Fiado</button>
				</td>
			</tr>
	</table>
	
	</div>
	
	<div id='direita'>
		<table id='tableinicial' border=1>
			<thead>
				<th>Conveniência Cristo Rei</th>
			</thead>
			<td>
				<input type="text" id="scanner-input" placeholder="Escaneie o código de barras" autofocus>
				<br><br>
				<input type="text" id="sugestoes" name='sugestoes' placeholder="Procurar por nome" autofocus>
				<div style='cursor:pointer; background-color:white; color:black; width: auto' name='sugestoes2' id="sugestoes2"></div>
				<br>				
			</td>
		</table>
		
		<div id='tabela_vendas'>
			<table id="product-list">
						<thead>
						  <tr>
							<th>Código</th>
							<th>Produto</th>
							<th>Quantidade</th>
							<th>Valor Unitário</th>
							<th>Valor Total</th>
							<th colspan=2>Quant</th>
						  </tr>
						</thead>
						<tbody id="product-list-body"></tbody>
			</table>
		</div>
				
	</div>
</div>

<div id="receipt"></div>
<div id="success-message">
 Venda Salva com sucesso!
</div>



<script>
var btnreload = document.getElementById('btnreload');
	  btnreload.addEventListener('click', function() {
		//history.back();
		location.reload();
});

var btnhome = document.getElementById('btnhome');
	  btnhome.addEventListener('click', function() {
		//history.back();
		window.location.href = "index.php";
});
var btnmenu = document.getElementById('btnMenu');
	  btnmenu.addEventListener('click', function() {
		//history.back();
		//window.location.href = "gerar_lista.php";
		window.open('gerar_lista.php', '_blank');
		
});
</script>
<script src="../zigmaster/public/assets/js/core/jquery.min.js"></script>
<script>
				jQuery(document).ready(function() {
				 $('#sugestoes').keyup(function() {
					var texto = $(this).val();
					if (texto.length >= 2) {
					  $.ajax({
						url: 'buscar_nome.php',
						method: 'POST',
						data: { texto: texto },
						success: function(response) {
						  $('#sugestoes2').html(response);
						}
					  });
					} else {
					  $('#sugestoes2').empty();
					}
				});
				
		$(document).on('click', '#sugestoes2 div', function () {
            var sugestao = $(this).text();

            // Obtenha o código correspondente ao nome clicado
            $.ajax({
                url: 'buscar_codigo.php', // Substitua pelo seu script PHP para obter o código
                method: 'POST',
                data: { texto: sugestao },
                success: function (codigo) {
                    // Preencha o código no campo
                    $('#scanner-input').val(codigo);
                    $('#sugestoes2').empty();
					$('#sugestoes').empty();
					
					   var barcode = codigo;
					   getProductDataFromDatabase(barcode)
						.then(function (productData) {
							try {
								if (productData.nome && productData.preco) {
									addProduct(barcode, productData.nome, 1, productData.preco,productData.quantidade );
								} else {
									console.log("Dados do produto incompletos.");
								}
							} catch (error) {
								console.log('Erro ao processar os dados:', error);
							}
						})
						.fail(function (jqXHR, textStatus, errorThrown) {
							console.log('Erro ao fazer a solicitação AJAX:', textStatus, errorThrown);
						});
						
						
                }
            });
			$('#scanner-input').value = "";
			$('#sugestoes').value = "";
			$('#sugestoes2').value = "";
        });
    });

</script>
<script src="../zigmaster/public/assets/js/core/jquery.min.js"></script>
<script src="script.js"></script>
<script>
  var generateReceiptRequested = false; // Variável para controlar se a geração do relatório foi solicitada

  function generateReceipt2(id) {
	saveSale(id);
	showSuccessMessage();
  }
  
  function Imprimir() {
    generateReceiptRequested = true;
    printReceipt();
  }
  
  function showSuccessMessage() {
	  var successMessage = $('#success-message');
	  successMessage.fadeIn();

	  // Aguarde 3 segundos e depois esconda a mensagem
	  setTimeout(function () {
		successMessage.fadeOut();
	  }, 3500);
  }
  
  function saveVendaCliente(nome, id) {
		$.ajax({
			url: 'salvar_venda_fiado.php',
			type: 'POST',
			data: {
				products: JSON.stringify(products), 
				meiopagamento: id,
				cliente: nome,
				totalAmount: totalAmount.toFixed(2) // Envie o valor total para o PHP
			},
			success: function (response) {
				console.log(response);
				updateQuantitiesInDatabase(products);
			},
			error: function (jqXHR, textStatus, errorThrown) {
				alert("Erro ao fazer a solicitação AJAX: " + textStatus + "||" + errorThrown);
				console.log('Erro ao fazer a solicitação AJAX:', textStatus, errorThrown);
			}
		});
		
	}
	
  function saveSale(id) {
		$.ajax({
			url: 'salvar_venda.php',
			type: 'POST',
			data: {
				products: JSON.stringify(products), 
				meiopagamento: id,
				totalAmount: totalAmount.toFixed(2) // Envie o valor total para o PHP
			},
			success: function (response) {
				// Lide com a resposta do servidor, se necessário
				console.log(response);
			},
			error: function (jqXHR, textStatus, errorThrown) {
				console.log('Erro ao fazer a solicitação AJAX:', textStatus, errorThrown);
			}
		});
		updateQuantitiesInDatabase(products);
	}

  function printReceipt() {
    if (generateReceiptRequested) {
      var receiptHTML = "<h2>Cupom Fiscal</h2>";
      products.forEach(function (product) {
        receiptHTML += "<p>" + product.name + " - " + product.quantity + "x R$ " + product.unitPrice.toFixed(2) + " = R$ " + product.totalPrice.toFixed(2) + "</p>";
      });
      receiptHTML += "<p><strong>Total: R$ " + totalAmount.toFixed(2) + "</strong></p>";
      var printWindow = window.open("", "_blank");
      printWindow.document.open();
      printWindow.document.write("<html><head><title>Cupom Fiscal</title></head><body><center>" + receiptHTML + "</center></body></html>");
      printWindow.document.close();
      printWindow.print();
      generateReceiptRequested = false;
    }
  }
</script>

<script>
function fetchCustomerData() {
    // Aqui você faz a requisição AJAX para obter os dados dos clientes
    $.ajax({
      url: 'buscar_clientes.php', // Substitua pelo caminho correto do seu script PHP
      method: 'GET',
      dataType: 'json',
      success: function (data) {
         fillCustomerSelect(data);
      },
      error: function (jqXHR, textStatus, errorThrown) {
        console.log('Erro ao buscar dados dos clientes:', textStatus, errorThrown);
      }
    });
}
function fillCustomerSelect(customers) {
  var select = document.getElementById('customerSelect');
  select.innerHTML = '';
  var emptyOption = document.createElement('option');
  emptyOption.value = '';
  emptyOption.text = 'Escolher Cliente';
  select.appendChild(emptyOption);
  customers.forEach(function (customer) {
    var option = document.createElement('option');
    option.value = customer;
    option.text = customer;
    select.appendChild(option);
  });
}
  function openCustomerPopup() {
    // Exibe o popup para escolher o nome do cliente
    document.getElementById('customerPopup').style.display = 'block';
	fetchCustomerData();
  }
  
  function saveSaleFiado() {
    var customerSelect = document.getElementById('customerSelect');
	var selectedOption = customerSelect.options[customerSelect.selectedIndex];
	if (customerSelect.options.length === -1 || selectedOption.value == '') {
		alert('O campo de clientes está vazio. Selecione um cliente antes de continuar.');
	}else{
		if (selectedOption) {
		 var customerName = selectedOption.text; // Obtém o texto da opção selecionada
		 SalvarVendaFiado(customerName, 6);
		 document.getElementById('customerPopup').style.display = 'none';
		} else {
			alert('Por favor, escolha um cliente.');
		}
	}
  }
  function ClosePopUp() {
    document.getElementById('customerPopup').style.display = 'none';
  }
  function SalvarVendaFiado(customerName, saleType) {
	saveVendaCliente(customerName, saleType);
	showSuccessMessage();
  }
</script>

<script>
    var products = [];
    var totalAmount = 0;
 // Função para adicionar um produto à lista
 function addProduct(code, name, quantity, unitPrice,quantidade) {
  var productList = document.getElementById("product-list-body");
  // Verifica se o produto já existe na lista
  var existingProduct = products.find(function (product) {
    return product.code === code;
  });
  if (existingProduct) {
    // Atualiza a quantidade e o valor total do produto existente
    existingProduct.quantity += quantity;
    existingProduct.totalPrice = existingProduct.quantity * unitPrice;
  } else {
    // Adiciona o novo produto à lista
    var newProduct = {
      code: code,
      name: name,
      quantity: quantity,
      unitPrice: unitPrice * 1,
	  quantidade: Number(quantidade),
      totalPrice: quantity * unitPrice
    };
    products.push(newProduct);
  }

  // Atualiza a tabela de produtos
  productList.innerHTML = "";
	products.forEach(function (product) {
		var row = document.createElement("tr");
		
		// Formatando os valores para exibir sempre duas casas decimais
		var formattedUnitPrice = formatPrice(product.unitPrice);
		var formattedTotalPrice = formatPrice(product.totalPrice);

		row.innerHTML = "<td>" + product.code + "</td>" +
						"<td>" + product.name + "</td>" +
						"<td><input type='text' class='quantity-input' value='" + product.quantity + "'></td>" +
						"<td>" + formattedUnitPrice + "</td>" +
						"<td>" + formattedTotalPrice + "</td>";
		productList.appendChild(row);
	});
	updateProductList();
}

function formatPrice(price) {
		if (typeof price === 'number') {
			return "R$ " + (Number.isInteger(price) ? price + ".00" : price.toFixed(2));
		} else {
			// Trate outros casos, como preço não definido ou não numérico
			return "N/A";
		}
}

function resetSale() {
		products = [];
		totalAmount = 0;
		document.getElementById("product-list-body").innerHTML = "";
		document.getElementById("total-amount").innerText = "0.00";
		document.getElementById("receipt").innerHTML = "";
		
		document.getElementById("quant_intem").textContent  = '0';
		document.getElementById("preco_unit").textContent = 'R$ 0,00';
		document.getElementById("nome_unit").textContent = '---';
		document.getElementById("scanner-input").value = "";
		document.getElementById("sugestoes").value = "";
		document.getElementById("scanner-input").focus();
		//document.getElementById("sugestoes").focus();
}
// Função para gerar o relatório
function generateReceipt() {
      var receiptDiv = document.getElementById("receipt");
      var receiptHTML = "<h2>Cupom Fiscal</h2>";
      products.forEach(function (product) {
        receiptHTML += "<p>" + product.name + " - " + product.quantity + "x R$ " + product.unitPrice.toFixed(2) + " = R$ " + product.totalPrice.toFixed(2) + "</p>";
      });
      receiptHTML += "<p><strong>Total: R$ " + totalAmount.toFixed(2) + "</strong></p>";
      receiptDiv.innerHTML = receiptHTML;
}

var scannerInput = document.getElementById("scanner-input");
scannerInput.addEventListener("keydown", function (event) {
		if ((event.key === 'j' && event.ctrlKey)) {
			event.preventDefault();
		}	
      if (event.key === "Enter") {
       var barcode = scannerInput.value;
	   
       getProductDataFromDatabase(barcode)
		.then(function (productData) {
			try {
				if (productData.nome && productData.preco) {
					addProduct(barcode, productData.nome, 1, productData.preco, productData.quantidade );
				} else {
					console.log("Dados do produto incompletos.");
				}
			} catch (error) {
				console.log('Erro ao processar os dados:', error);
			}
		})
		.fail(function (jqXHR, textStatus, errorThrown) {
			console.log('Erro ao fazer a solicitação AJAX:', textStatus, errorThrown);
		});
        scannerInput.value = "";
		
      }
});


var sugestoesInput = document.getElementById("sugestoes");
sugestoesInput.addEventListener("keydown", function (event) {
		if ((event.key === 'j' && event.ctrlKey)) {
			event.preventDefault();
		}	
});
function getProductDataFromDatabase(barcode) {
	return $.ajax({
			url: 'consulta.php',
			type: 'GET',
			data: { barcode: barcode },
			dataType: 'json'
	});
}

function removeProduct(index) {
    products.splice(index, 1);
    updateProductList();
}

function changeQuantity(index) {
    var newQuantity = parseInt(prompt("Informe a nova quantidade:"));
    if (!isNaN(newQuantity) && newQuantity > 0) {
        products[index].quantity = newQuantity;
        products[index].totalPrice = newQuantity * products[index].unitPrice;
        updateProductList();
    } else {
        alert("Quantidade inválida. Informe um número inteiro maior que zero.");
    }
}
function updateQuantity(index) {
    var quantityInput = document.getElementsByClassName('quantity-input')[index];
    var newQuantity = quantityInput.value;
    products[index].quantity = newQuantity;
    updateProductList();
}
function updateQuantitiesInDatabase(products) {
    // Itere sobre os produtos e chame a função de atualização de quantidade para cada um
    products.forEach(function (product) {
        updateQuantityInDatabase(product.code, product.quantity);
    });
}

function updateQuantityInDatabase(code, newQuantity) {
    $.ajax({
        url: 'atualizar_estoque.php', // Substitua pelo nome do seu arquivo PHP
        method: 'POST',
        data: { code: code, quantity: newQuantity },
        success: function(response) {
            console.log('Atualização bem-sucedida:', response);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log('Erro ao fazer a solicitação AJAX:', textStatus, errorThrown);
        }
    });
}
// Função para atualizar a tabela de produtos na página
function updateProductList() {
    var productList = document.getElementById("product-list-body");
	let quant_intemInput = document.getElementById("quant_intem");
	let nome_unit = document.getElementById("nome_unit");
	let preco_unit = document.getElementById("preco_unit");
	
	productList.innerHTML = "";
    products.forEach(function (product, index) {
        var row = document.createElement("tr");

        var formattedUnitPrice = formatPrice(product.unitPrice);
        var formattedTotalPrice = formatPrice(product.totalPrice);

        row.innerHTML = "<td>" + product.code + "</td>" +
            "<td>" + product.name + "</td>" +
            "<td><h3 class='quantity-input' > " + product.quantity + " / " + Number(product.quantidade) +  "</h3></td>" +
            "<td>" + formattedUnitPrice + "</td>" +
            "<td>" + formattedTotalPrice + "</td>" +
            "<td><button style='background-color:red; width:22px; cursor: pointer' title='Excluir Item' onclick=\"removeProduct(" + index + ")\">-</button></td>" +
            "<td><button style='background-color:green;width:22px; cursor: pointer' title='Quantidade de Itens' onclick=\"changeQuantity(" + index + ")\">+</button></td>";

        productList.appendChild(row);
		
		quant_intemInput.innerText = product.quantity;
		preco_unit.innerText = formattedUnitPrice;
		nome_unit.innerText = product.name;
    });
	
	// Calcula o valor total
    totalAmount = products.reduce(function (sum, product) {
        return sum + product.totalPrice;
    }, 0);

    // Atualiza o valor total exibido
    document.getElementById("total-amount").innerText = totalAmount.toFixed(2);

    // Gera o novo cupom
    generateReceipt();
}

</script>
</div> 
</body>
<footer>
    <p id='foter'><a href="https://linkedin.com/in/felipemirandaoficial" style="text-decoration: none; color: inherit;" target="_blank">Feito por F.Miranda</a></p>
</footer>
</html>