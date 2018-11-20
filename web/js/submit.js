/*
 APS Desenvolvimento de aplicações WEB 
 Alunos: Allan Wanderley Alves - 2016201683
         Rafael Osorio - 2010101281
         Rafael Ferreira de Souza - 2014200413 

 */


function verificarCamposCifra(){
    if(document.getElementById("palavraACifrar").value === ''){
        alert("Nao e possivel cifrar um campo em branco!")
    }
}

function verificarCamposDecifra(){
    if(document.getElementById("palavraADecifrar").value === ''){
        alert("Nao e possivel decifrar um campo em branco!")
    }
}

function voltar(){
    location.href = "index.jsp";
}
