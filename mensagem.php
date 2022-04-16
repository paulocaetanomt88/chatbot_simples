<?php
include_once("conexao.php");

// recuperando mensagem do usuário através do ajax
$getMessage = mysqli_real_escape_string($conexao, $_POST['text']);

// SQL que verifica a consulta do usuário com as consultas no banco de dados
$check_queries = "SELECT respostas FROM chatbot WHERE consultas LIKE '%$getMessage%'";

// Executa a SQL
$run_query = mysqli_query($conexao, $check_queries) or die("Erro ao consultar");

// Se a consulta do usuário coincidir com as consultas no banco de dados mostre a resposta, caso contrario cai no else
if (mysqli_num_rows($run_query) > 0) {
    // buscando variavel do banco de dados de acordo com a consulta do usuário
    $fetch_data = mysqli_fetch_assoc($run_query);

    // armazenando em replay uma variável que enviaremos para ajax
    $replay = $fetch_data['respostas'];
    echo $replay;
} else {
    echo "Desculpe, mas não entendi sua solicitação.";
}
