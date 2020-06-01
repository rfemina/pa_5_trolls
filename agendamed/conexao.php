<?php  
	$servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$dbnome = "agendesaude";

	//CONEXÃO
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbnome);

	if(!$conn){
		die("Falha na conexão: " . mysqli_connect_error());
	} else {
	//echo "Conexão Realizada com Sucesso."
	}
?>