<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Calculo IMC</title>

</head>
<body>
  	<h1>Cálculo do IMC</h1>

<p>Peso  <input id="p"></p>
<p>Altura<input id="h"></p>
<p>Sexo <select id="sexo">
	<option>Feminino</option>
	<option>Masculino</option>
</select>

<button type="button" onclick="myFunction()">Resultado</button></p>

<p id="demo1"></p>
<p id="demo2"></p>
<p id="demo3"></p>

<script>
function myFunction() {
    var p ,h ,imc ,sexo;

    //trazer os valores ali em cima
    p = document.getElementById("p").value;
    h = document.getElementById("h").value;
    sexo = document.getElementById("sexo").value;
    imc = p/(h*h);
    
    if(sexo =="Feminino"){
    	document.getElementById("demo3").innerHTML ="Sexo : " +sexo;
		if (imc < 19.1) {
			document.getElementById("demo1").innerHTML = "Você está abaixo do peso com esse indice : "+imc;
			}
			else if(imc>=19.1 && imc<25.9){
			document.getElementById("demo1").innerHTML = "Você está no peso normal com esse indice  : "+imc;
			}
			else if(imc>=25.9 && imc<27.4) {
			document.getElementById("demo1").innerHTML = "Você está com sobre peso e indice : "+imc;
			}
			else if(imc>=27.4 && imc<32.4) {
				document.getElementById("demo1").innerHTML = "Você está com obesidade e indice : "+imc;
			}
			else if(imc>=32.4){
			document.getElementById("demo1").innerHTML = "Você está com obesidade grave com esse indice :"+imc;
			}
		else{
			document.getElementById("demo1").innerHTML = "Dados invalidos";
			}
	
	}else if (sexo == "Masculino"){
		document.getElementById("demo3").innerHTML ="Sexo : " +sexo;
		if (imc < 20.7) {
			document.getElementById("demo1").innerHTML = "Você está abaixo do peso com esse indice : "+imc;
			}
			else if(imc>=20.7 && imc<26.4){
			document.getElementById("demo1").innerHTML = "Você está no peso normal com esse indice : "+imc;
			
			}
			else if(imc>=26.4 && imc<27.8) {
			document.getElementById("demo1").innerHTML = "Você está com sobre peso e indice : "+imc;
			
			}
			else if(imc>=27.8 && imc<31.1) {
			document.getElementById("demo1").innerHTML = "Você está com obesidade e indice : "+imc;
			
			}
			else if(imc>=31.1){
			document.getElementById("demo1").innerHTML = "Você está com obesidade grave com esse indice :"+imc;
			}
		else{
			document.getElementById("demo1").innerHTML = "Dados invalidos";
			}
	}else{
		document.getElementById("demo1").innerHTML = "Dados invalidos"; 
		}
}	

</script>
  
</body>
</html>