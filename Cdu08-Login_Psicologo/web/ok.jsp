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
        <%
            String user = null;
            if((String)session.getAttribute("userSession") != null){
                user = (String)session.getAttribute("userSession");
            } else {
                response.sendRedirect("index.jsp");
            }
        %>
      <div class="jumbotron">
        <h1 class="display-1">Oii</h1>
        <br/><br/><br/>
        <h1>Sua senha foi alterada com sucesso!</h1><br/>
        <h3> Faça login, clicando <a class="navbar-brand bem_logo" href="index.jsp">AQUI =D</a> </h3>
        <br/>
      </div>
      <!-- /.jumbotron -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Atividade de Desenvolvimento Web</p>
            <p class="m-0 text-center text-white">Maryanne Alice - 20162014040029</p>
        </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html>

