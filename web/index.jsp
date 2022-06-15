<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>WEBook Manager Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="./assets/img/icons/ico.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="./assets/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="./assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="./assets/fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="./assets/vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="./assets/vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="./assets/vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="./assets/vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="./assets/vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="./assets/css/util.css">
        <link rel="stylesheet" type="text/css" href="./assets/css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>


        <div class="container-login100" style="background-image: url('./assets/img/bookstore-2.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
                <form class="login100-form validate-form" name="logatUsuario" action="LogarUsuario">
                    <h2 class="text-center title">WEBook</h2>
                    <span class="login100-form-title p-b-37">
                        Logar
                    </span>

                    <div class="wrap-input100 validate-input m-b-20" data-validate="Informe o usuário ou o e-mail">
                        <input class="input100" type="text" name="loginUsuario" placeholder="Usuário ou e-mail" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-25" data-validate = "Informe a senha">
                        <input class="input100" type="password" name="senhaUsuario" placeholder="Senha" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">
                            <a href="index.jsp">Entrar </a>
                        </button>
                    </div>

                </form>


            </div>
        </div>



        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="./assets/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="./assets/vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="./assets/vendor/bootstrap/js/popper.js"></script>
        <script src="./assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="./assets/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="./assets/vendor/daterangepicker/moment.min.js"></script>
        <script src="./assets/vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="./assets/vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="./assets/js/main.js"></script>

    </body>
</html>
