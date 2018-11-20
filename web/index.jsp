<!--APS Desenvolvimento de aplicações WEB 
    Alunos: Allan Wanderley Alves - 2016201683
            Rafael Osorio - 2010101281
            Rafael Ferreira de Souza - 2014200413 
-->
            
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cifra de Cesar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="js/submit.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" integrity="sha384-pjaaA8dDz/5BgdFUPX6M/9SUZv4d12SUPF0axWc+VRZkx5xU3daN+lYb49+Ax+Tl" crossorigin="anonymous"></script>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body id="back">
        <div class="container">
            <div class="row">
                <div class="col-md mid">
                    <form action="/Cifra-cesar/ServletCesar" method="GET" onsubmit="return verificarCamposCifra()">
                        <div class="form-group">
                            <h1 class="topic">Cifra</h1>
                            <label for="palavraACifrar">Palavra:</label>
                            <input type="text" class="form-control" id="palavraACifrar" name="palavraACifrar">
                            <br>
                            <button type="submit" name="tipo" value="Cifrar" class="btn btn-success no-border">Cifrar</button>
                        </div>
                    </form>
                </div>
                <div class="separator"></div>
                <div class="col-md mid">
                    <form action="/Cifra-cesar/ServletCesar" method="GET" onsubmit="return verificarCamposDecifra()">
                        <div class="form-group">
                            <h1 class="topic">Decifra</h1>
                            <label for="palavra">Palavra:</label>
                            <input type="text" class="form-control" id="palavraADecifrar" name="palavraADecifrar">
                            <br>
                            <button type="submit" name="tipo" value="Decifrar" class="btn btn-primary no-border">Decifrar</button>
                        </div>
                    </form>
                </div>
                <div class="col-md mid">
                    <p>Alunos:</p>
                    <p> Allan Wanderley Alves - 2016201683</p>
                    <p>Rafael Osorio - 2010101281</p>
                    <p>Rafael Ferreira de Souza - 2014200413 </p>
                </div>
            </div>
        </div>
    </body>
</html>