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
        <title>CDU02-Cadastro-Psicólogo</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/auxiliar.css" rel="stylesheet">
    <link href="css/selected-css.css" rel="stylesheet">
    <link href="css/bootstrap-select.css" rel="stylesheet">
    
    <!--SCRIPT-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/bootstrapValidator.js"></script>
    <script src="jquery/jquery.min.js"></script>
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
        <h2 class="display-8">Olá, quer nos ajudar nessa missão de fazer o <a class="navbar-brand bem_logo" href="#">bem</a>? Então cadastre-se!</h2>
        <br/>
        <ol class="breadcrumb"> Seu cadastro será submetido a validação após conclusão.</ol>
        <br/><br/>
            <form class="form" id="contact-form" method="post" action="servletCadPsic">
                <div class=" control-group form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Nome Completo</label>
                            </div>
                            <div class="col-6 col-md-7">
                                <input type="text" class="form-control" name="nome_completo" required/>
                            </div>
                        </div>
                    </div>
                </div><br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-2">
                            <label class="control-label">C.R.P.</label>
                        </div>
                    <div class="col-6 col-md-7">
                        <input type="text" class="form-control" name="crp" placeholder="Insira somente números" maxlength="26" required/>
                    </div>
                    </div>
                </div>
                <br/>
                
                
                <div class="control-group form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                              <label>Forma de Atendimento</label>
                            </div>
                            <div class="col-6 col-md-7">
                              <div class="dropdown-menu open" role="combobox">
                                <ul>
                                    <li data-original-index="0" class="">
                                        <a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false">
                                            <span class="text">Privado</span>
                                            <span class="glyphicon glyphicon-ok check-mark"></span>
                                        </a>
                                    </li>
                                    <li data-original-index="1" class="">
                                        <a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false">
                                            <span class="text">Amil</span>
                                            <span class="glyphicon glyphicon-ok check-mark"></span>
                                        </a>
                                    </li>
                                    <li data-original-index="0" class="">
                                        <a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false">
                                            <span class="text">Unimed Natal</span>
                                            <span class="glyphicon glyphicon-ok check-mark"></span>
                                        </a>
                                    </li>
                                    <li data-original-index="3" class="">
                                        <a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false">
                                            <span class="text">Hapvida</span>
                                            <span class="glyphicon glyphicon-ok check-mark"></span>
                                        </a>
                                    </li>
                                </ul>
                                </div>
                            <select class="selectpicker show-menu-arrow form-control" multiple="">                    
                              <option>Privado</option>
                              <option>Amil</option>
                              <option>Unimed Natal</option>
                              <option>Hapvida</option>
                            </select>
                            </div>
                        </div>
                    </div>
                </div>
                
                <br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-5">
                            <label class="control-label">Local de Atendimento</label>
                        </div>
                    </div>
                </div>
                <table width="100%">
                    <tr>
                        <td>
                        <div class="control-group form-group">
                            <div class="row">
                                <div class="col-12 col-md-12">
                                    <div class="col-md-2">
                                        <label class="control-label">Rua</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="rua"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                        <!---->
                        <td>
                        <div class="control-group form-group">
                            <div class="row">
                                <div class="col-12 col-md-10">
                                    <div class="col-md-2">
                                        <label class="control-label">Número</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" name="numero"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                    </tr>
                </table>
                <table width="100%">
                    <tr>
                        <td>
                        <div class="control-group form-group">
                            <div class="row">
                                <div class="col-6 col-md-12">
                                    <div class="col-md-2">
                                        <label class="control-label">Bairro</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="bairro"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                        <td>    
                        <div class="control-group form-group">
                            <div class="row">
                                <div class="col-6 col-md-12">
                                    <div class="col-md-2">
                                        <label class="control-label">Cidade</label>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="cidade"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                    </tr>
                </table>
                <br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-2">
                            <label class="control-label">Telefone Comercial</label>
                        </div>
                    <div class="col-6 col-md-7">
                        <input type="text" class="form-control" name="contato"/>
                    </div>
                    </div>
                </div>
                <br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-2">
                            <label class="control-label">Telefone Opcional</label>
                        </div>
                    <div class="col-6 col-md-7">
                        <input type="text" class="form-control" name="contatoOp"/>
                    </div>
                    </div>
                </div>
                <br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-2">
                            <label class="control-label">E-mail</label>
                        </div>
                    <div class="col-6 col-md-7">
                        <input type="text" class="form-control" name="EMail" required/>
                    </div>
                    </div>
                </div>
                
                <br/>
                <div class="row">
                    <div class="col-6 col-md-8">
                    <hr width="80%">
                    </div>
                </div>
                <br/>
                
                <div class=" control-group form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Login</label>
                            </div>
                            <div class="col-6 col-md-7">
                                <input type="text" class="form-control" name="login" required/>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class=" control-group form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Senha</label>
                            </div>
                            <div class="col-6 col-md-7">
                                <input type="text" class="form-control" name="senha" required/>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class=" control-group form-group">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Confirmação de Senha</label>
                            </div>
                            <div class="col-6 col-md-7">
                                <input type="text" class="form-control" name="conf_senha" required/>
                            </div>
                        </div>
                    </div>
                </div>
                
                <br/><br/>     
                
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-12">
                            <input type="checkbox" id="verificacaoInfo" name="verificacaoInfo" value="sim" required>  Declaro que as informações prestadas 
                            são verdadeiras, assumindo inteira responsabilidade pelas mesmas. 
                        </div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-9">
                            <input type="submit" class="form-control btn btn-primary btn-cadPsic" name="enviar" value="Quero ajudar!"/>
                        </div>
                    </div>
                </div>
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
    <script src="js/scriptValidator.js"></script>
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
  </body>
</html>