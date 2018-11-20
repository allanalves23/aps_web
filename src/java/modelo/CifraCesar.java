package modelo;


/**
    APS Desenvolvimento de aplicações WEB 
    Alunos: Allan Wanderley Alves - 2016201683
            Rafael Osorio - 2010101281
            Rafael Ferreira de Souza - 2014200413 
 */


public class CifraCesar {
    private String textoS;
    int letra = 3;
    
    public String getTextoS(){
        return	textoS;
    }

    public void	setTextoS(String textoS) {
	this.textoS = textoS.toUpperCase();
    }

    public CifraCesar (String textoS){
       this.textoS=textoS.toUpperCase();
    }
    
    public CifraCesar(){
    this.textoS="";
    }
    
    public String cifrando(){
        String textoCifrado="";
        for(int i=0; i<this.textoS.length();i++){
        	if (this.textoS.charAt(i) != ' ') {
            textoCifrado +=(char)((this.textoS.charAt(i)-65+3%26+65));
        	} else {
        		textoCifrado +=" ";
        	}
        }
       
        return textoCifrado;
    }
  
    public String decifrar(String textoCifrado){
        textoS = "";
        for(int	i=0; i<textoCifrado.length();i++){
            if (textoCifrado.charAt(i) != ' '){
            this.textoS += (char)((textoCifrado.charAt(i)-65-3)%26+65);
            } else {
                this.textoS += " ";
            }
	}
    return textoS;
    } 
 
}