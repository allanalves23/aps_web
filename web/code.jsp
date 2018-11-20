<!--APS Desenvolvimento de aplicações WEB 
    Alunos: Allan Wanderley Alves - 2016201683
            Rafael Osorio - 2010101281
            Rafael Ferreira de Souza - 2014200413 
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="js/submit.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" integrity="sha384-pjaaA8dDz/5BgdFUPX6M/9SUZv4d12SUPF0axWc+VRZkx5xU3daN+lYb49+Ax+Tl" crossorigin="anonymous"></script>
    <link href="css/style.css" rel="stylesheet">
    <title>Resultado</title>
</head>
<body id="back">

    <%
        if (!(request.getParameter("tipo").equals("Decifrar") || request.getParameter("tipo").equals("Cifrar"))) {
            response.sendRedirect("index.jsp");
        }

        if (request.getParameter("c").length() < 1) {
            response.sendRedirect("index.jsp");
        }

        if (request.getParameter("tipo").equals("Cifrar")) {
            String codificado = request.getParameter("c");
            String original = request.getParameter("o");
            String saudacoes = "PALAVRA CODIFICADA COM SUCESSO!";
    %>

    <div class="container">
        <div class="mid">
            <h1 class="topic setGreen"><%out.print(saudacoes);%></h1>
            <p><%out.print("Palavra Original: " + original);%></p>
            <p><%out.print("Palavra Codificada: " + codificado);%></p>
            <button type="button" class="btn btn-info" onclick="voltar()">Sair</button>
        </div>
    </div>


    <%      }
        if (request.getParameter("tipo").equals("Decifrar")) {
            String decodificado = request.getParameter("c");
            String original = request.getParameter("o");
            String saudacoes = "PALAVRA DECODIFICADA COM SUCESSO!";
    %>

    <div class="container">
        <div class="mid">
            <h1 class="topic setGreen"><%out.print(saudacoes);%></h1>
            <p><%out.print("Palavra Codificada: " + original);%></p>
            <p><%out.print("Palavra Original " + decodificado);%></p>
            <button type="button" class="btn btn-info" onclick="voltar()">Sair</button>
        </div>
    </div>

    <%
        }

    %>

</body>

