<%-- 
    Document   : 404
    Created on : 26/10/2017, 20:51:19
    Author     : marya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
        <title>CDU08-Login_Psicologo</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/auxiliar.css" rel="stylesheet">
    
    <!--SCRIPT-->
    <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.js"></script>-->
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>-->
    <!--<script src="js/bootstrap-select.js"></script>-->
    <!--<script src="js/bootstrapValidator.js"></script>-->
    <script src="vendor/jquery/jquery.min.js"></script>
  </head>
    
  <body>
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand bem_logo" href="#">bem</a>
      </div>
    </nav>
    
        <!-- Page Content -->
    <div class="container">
      <!-- Page Heading/Breadcrumbs -->    
        <div class="jumbotron title-page">
            <h3 align="center" class="display-8">Olá, faça seu login no <a class="navbar-brand bem_logo" href="#">bem</a>
            E nos ajude a ajudar!</h3>

            <br/>
        
        <form class="form form-signin" id="contact-form" method="post" action="servletLogin">
            <label class="control-label">Login: </label>
                <input type="text" name="login" class="form-control" required autofocus>
                <br/>
            <label class="control-label">Senha: </label>
                <input type="password" name="senha"  class="form-control" required>
                
            <span><a href="mudarSenha.jsp"> Esqueci minha senha </a></span>
                <br/><br/>
                <input type="submit" class="form-control btn btn-primary btn-cadPsic" value="Logar"/>
        </form>

        </div> <!-- /.jumbotron -->
    </div> <!-- /.container -->
    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Atividade de Desenvolvimento Web</p>
            <p class="m-0 text-center text-white">Maryanne Alice - 20162014040029</p>
        </div>
      <!-- /.container -->
    </footer>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--<script src="js/scriptValidator.js"></script>-->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
          var mySelect = $('#first-disabled2');

          $('#special').on('click', function () {
            mySelect.find('option:selected').prop('disabled', true);
            mySelect.selectpicker('refresh');
          });

          $('#special2').on('click', function () {
            mySelect.find('option:disabled').prop('disabled', false);
            mySelect.selectpicker('refresh');
          });

          $('#basic2').selectpicker({
            liveSearch: true,
            maxOptions: 1
          });
        });
    </script>
    <script>
        $(document).ready(function() {
    $('.form').bootstrapValidator({
        message: 'O valor não é válido',
        excluded: [':disabled', ':hidden', ':not(:visible)'],
        feedbackIcons: {
            valid: '',
            invalid: '',
            validating: ''
        },
        fields: {
            login: {
                message: 'O login não é válido',
                validators: {
                    notEmpty: {
                        message: 'O campo é obrigatório!'
                    },
                    stringLength: {
                        min: 6,
                        max: 10,
                        message: 'O login tem entre 6 e 10 letras e/ou números'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/
                    }
                }
            },
            senha: {
                validators: {
                    notEmpty: {
                        message: 'Campo obrigatório!'
                    },
                    stringLength: {
                        min: 6,
                        max: 10,
                        message: 'A senha tem entre 6 e 10 letras e/ou números'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/
                    }
                }
            },
            conf_senha: {
                    validators: {
                        notEmpty: {
                            message: 'O campo é obrigatório'
                        },
                        identical: {
                            field: 'senha',
                            message: 'Ops... A senha não é igual'
                        },
                        different: {
                            field: 'login',
                            message: 'A senha não pode ser igual a o login'
                        }
                    }
            },
            crp: {
                 validators: {
                     notEmpty: {
                         message: 'O campo é obrigatório'
                     },
                     regexp: {
                         regexp: /^[0-9_\.]+$/,
                          message: 'Texto incompatível'
                     }
                 }
            }           
        }
    });
});

    </script>
  </body>
</html>