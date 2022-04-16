<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chatbot simples e funcional</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js">
    </script>
</head>

<body>
    <div class="wrapper">
        <div class="title">
            Chatbot simples e funcional
        </div>
        <div class="form">
            '<div class="bot-inbox inbox">
                <div class="icon"><i class="fas fa-user"></i></div>
                <div class="msg-header">
                    <p>Olá, como posso te ajudar?</p>
                </div>
            </div>'
        </div>
        <div class="typing-field">
            <div class="input-data">
                <input id="data" type="text" placeholder="Digite sua mensagem aqui" required>
                <button id="send-btn">Enviar</button>
            </div>
        </div>
</body>
<script>
    $(document).ready(function() {
        $("#send-btn").on("click", function() {
            $value = $("#data").val();
            $msg = '<div class="user-inbox inbox"><div class="msg-header"><p>' + $value + '</p></div></div>';
            $(".form").append($msg);
            $("#data").val('');

            // iniciando código ajax
            $.ajax({
                url: 'mensagem.php',
                type: 'POST',
                data: 'text=' + $value,
                success: function(result) {
                    $replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>' + result + '</p></div></div>';
                    $(".form").append($replay);
                    // quando o chat desce a barra de rolagem vem automaticamente para baixo
                    $(".form").scrollTop($(".form")[0].scrollHeight);
                }
            });
        })
    })
</script>

</html>