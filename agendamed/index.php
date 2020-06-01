<?php 
session_start();
?>

<!doctype html>
<html lang = "pt-br">
<head>
	<!-- META -->
	<meta http-equiv="content-type" content="text/html" charset="UTF-8">
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title> AgendaMed </title>
	<meta name="description" content="Site para realização de agendamentos em UBS's de Araras.">
	<meta name="keywords" content="Saúde, UBS, Unidades Básicas de Saúde, Araras, Agendamentos, Consultas">
	<meta name="robots" content="index, follow">
	<meta name="author" content="TROLLS">
	<link rel="icon" type="image/png" href="IMG/favicon.png"/>
	<link rel="shortcut icon" href="IMG/favicon.ico" >
	<!-- FONT AWESOME -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- FONT LATO -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700" rel="stylesheet">
	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- BOOTSTRAP THEME CSS -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<!-- CSS/JS -->
	<link rel="stylesheet" type="text/css" href="style.css"/>
		<!--HEAD-->
		</head>
		<body class="fadeIn">
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel" style="font-size: 1.6em;">Esqueceu a Senha</h4>
						</div>
						<div class="modal-body" style="font-size: 1.5em;">
							Entre em contato com sua respectiva Unidade Básica de Saúde para que seja feito a recupeção de senha.
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid cPrincipal azul">
				<div class="row" id="acesse">
					<div class="menuFixo" id="nav">
						<div class="navimg col-xs-4">
							<img src="IMG/TopPSemfundo.png" alt="">
						</div>
						<div class="nav col-xs-8">
							<ul>
								<li>
									<a href="#acesse" class="scroll">ACESSE</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href="#sobre" class="scroll">SOBRE</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href="#ubs" class="scroll">UBS</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href="#araras" class="scroll">ARARAS</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href="#footer" class="scroll">CONTATO</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="menu">
						<div class="navimg col-xs-4">
							<img src="IMG/TopPSemfundo.png" alt="">
						</div>
						<div class="nav col-xs-8">
							<ul>
								<li>
									<a href="#acesse" class="scroll">ACESSE</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href="#sobre" class="scroll">SOBRE</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href="#ubs" class="scroll">UBS</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href="#monga" class="scroll">ARARAS</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href="#footer" class="scroll">CONTATO</a>
								</li>
							</ul>
						</div>
					</div>			
				</div>
				<div class="row rowEspacoPrincipal">
					<div class="col-xs-12">
						<!-- ESPAÇO -->
					</div>
				</div>
				<div class="row rowEspaco">
					<div class="col-xs-5 espacoPrincipal">
						<div class="col-xs-12 eTexto">

						</div>
						<div class="col-xs-12 textoPrincipal">
							Agende sua Consulta.
						</div>
					</div>
					<div class="col-xs-7 espacoPrincipal">
						<div class="col-xs-9 loginP">
							<div class="row">
								<div class="col-xs-12">
									<h1>Acesse</h1>
									<h2>Digite seu prontuário e senha para acessar.</h2>
									<form action="valida.php" method="POST">
										<div class="form-group">
											<label for="pront">Prontuário</label>
											<input type="text" class="form-control" id="pront" placeholder="Prontuário" autocomplete="off" name="pront">
										</div>
										<div class="form-group">
											<label for="senha">Senha</label>
											<input type="password" class="form-control" id="senha" placeholder="Senha" autocomplete="off" name="senha">
										</div>
										<div class="eSenha">
											<a href="login.php">Logar como funcionário</a> 
											| 
											<a data-toggle="modal" data-target="#myModal" style="cursor: pointer;">Esqueceu a senha?</a>
											
											<?php 
											if(isset($_SESSION['loginErro'])){
												echo "<p class='text-danger'>" . $_SESSION["loginErro"] . "</p>";
												unset($_SESSION['loginErro']);
											}
											session_destroy();
											?>
										</div>
										<button type="submit" class="btn btn-primary">Logar</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid cSobre">
				<div class="row sobre" id="sobre">
					<div class="sobreImg col-lg-6 visible-lg-block">
						<img src="IMG/icon.png" alt="ICON">
					</div>
					<div class="inner col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 col-lg-5 col-lg-offset-0 text-justify">
						<h1 class="hidden-xs"> SOBRE </h1>
						<h1 class="visible-xs-block"> SOBRE </h1> <br class="visible-xs-block">
						<p> Com AgendaMed você pode fazer agendamento de consultas de Unidades Básicas de Saúde diretamente de sua casa! </p>
						<p> Você precisa só do seu número de prontuário e sua senha para acessar, assim você terá acesso á todos horários disponíveis de acordo com a UBS escolhida, além disso, você ainda poderá ver todos profissionais que atendem consultas agendadas e acompanhar seu agendamento a hora que quiser. </p>
						<p> Com  AgendaMed a sua busca por uma vida mais saúdavel se torna bem mais fácil e efetiva. Marque uma consulta agora mesmo! </p>				
					</div>
				</div>
			</div>
			<div class="container-fluid cUbs">
				<div class="row ubs" id="ubs">
					<div class="col-xs-12">
						<div class="row">
							<div class=" col-lg-6 col-lg-offset-3">
								<h1 class="fundotxt-titulo"> UNIDADES BÁSICAS DE SAÚDE </h1>
							</div>
						</div>
						<div class="row">
							<div class="inner col-xs-10 col-xs-offset-1">
								<div class="fundotxt">
									<p> As unidades básicas de saúde são estabelecimentos gerenciados pela diretoria de saúde de um deteminado municípo, que prove para um respectivo bairro uma saúde melhor para os moradores, onde eles podem agendar consultas pediátricas, laboratoriais(clínica), entre outras. </p>
									<a onclick="window.open('https://www.google.com.br/maps/place/R.+Fran%C3%A7a,+99+-+Jardim+Piratininga,+Araras+-+SP,+13604-066/@-22.3454128,-47.3826949,725m/data=!3m2!1e3!4b1!4m5!3m4!1s0x94c87727da3fa5f7:0x4fca0fccce2fdf9!8m2!3d-22.3454128!4d-47.3808224?hl=pt-BR','Pagina', 'STATUS=NO, TOOLBAR=NO, LOCATION=NO, DIRECTORIES=NO, RESISABLE=NO, SCROLLBARS=YES, TOP=10, LEFT=10, WIDTH=770, HEIGHT=400');"><img src="IMG/ubsev.png" alt="" class="img-thumbnail" data-toggle="tooltip" data-placement="bottom" title="UBS Dr. Ênio Vitalli"></a>
									<a onclick="window.open('https://www.google.com.br/maps/search/Rua+Carpinteiro+s%2Fn%C2%BA+%C2%AD+Jos%C3%A9+Ometto+I/@-22.354217,-47.3418617,725m/data=!3m2!1e3!4b1?hl=pt-BR','Pagina', 'STATUS=NO, TOOLBAR=NO, LOCATION=NO, DIRECTORIES=NO, RESISABLE=NO, SCROLLBARS=YES, TOP=10, LEFT=10, WIDTH=770, HEIGHT=400');"><img src="IMG/ubsacf.png" alt="" class="img-thumbnail" data-toggle="tooltip" data-placement="bottom" title="UBS Antonoo Calos Fabricio"></a>
									<a onclick="window.open('https://www.google.com/maps/place/Ac.+Pres.+Castelo+Branco+-+Conj.+Hab.+Narciso+Gomes,+Araras+-+SP,+13601-400/@-22.38,-47.388332,725m/data=!3m1!1e3!4m5!3m4!1s0x94c8775eb1f895ed:0x2b3966b390d89858!8m2!3d-22.3794897!4d-47.3856595','Pagina', 'STATUS=NO, TOOLBAR=NO, LOCATION=NO, DIRECTORIES=NO, RESISABLE=NO, SCROLLBARS=YES, TOP=10, LEFT=10, WIDTH=770, HEIGHT=400');"><img src="IMG/ubsosd.png" alt="" class="img-thumbnail" data-toggle="tooltip" data-placement="bottom" title="UBS Oswaldo Salvador Devitte "></a>
									<a onclick="window.open('https://www.google.com/maps/place/Psf+Jos%C3%A9+Fiori/@-22.3674957,-47.3692641,3a,75y,246.38h,90t/data=!3m7!1e1!3m5!1svSzoM__7e6oPzrRpltr-vA!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DvSzoM__7e6oPzrRpltr-vA%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D145.89638%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x0:0xcfeb32ccc4865fd0!8m2!3d-22.3668837!4d-47.3677931', 'Pagina', 'STATUS=NO, TOOLBAR=NO, LOCATION=NO, DIRECTORIES=NO, RESISABLE=NO, SCROLLBARS=YES, TOP=10, LEFT=10, WIDTH=770, HEIGHT=400');"><img src="IMG/ubsjf.png" alt="" class="img-thumbnail" data-toggle="tooltip" data-placement="bottom" title="UBS José Fiori"></a>
									<a onclick="window.open('https://www.google.com/maps/place/R.+An%C3%ADbal+Lopes+da+Silva+-+Res.+Bosque+de+Versalles,+Araras+-+SP,+13609-384/@-22.3815654,-47.3822477,17z/data=!4m13!1m7!3m6!1s0x94c877585f48ac87:0xdc1f03c7104ccdce!2sR.+An%C3%ADbal+Lopes+da+Silva+-+Res.+Bosque+de+Versalles,+Araras+-+SP,+13609-384!3b1!8m2!3d-22.3815221!4d-47.3823277!3m4!1s0x94c877585f48ac87:0xdc1f03c7104ccdce!8m2!3d-22.3815221!4d-47.3823277', 'Pagina', 'STATUS=NO, TOOLBAR=NO, LOCATION=NO, DIRECTORIES=NO, RESISABLE=NO, SCROLLBARS=YES, TOP=10, LEFT=10, WIDTH=770, HEIGHT=400');"><img src="IMG/ubsem.png" alt="" class="img-thumbnail" data-toggle="tooltip" data-placement="bottom" title="UBS Emerson Mercatelli  "></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid cMonga">
				<div class="row monga" id="monga">
					<div class="col-xs-12">
						<div class="row">
							<div class="espacoMonga col-xs-12">
								<h1> PREFEITURA DE ARARAS </h1>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6">
								<div class="inner espacoMonga">
									<p> O AgendaMed tem o enfoque de desenvolver uma saúde melhor para o municipio de Araras.</p>
									<p> Onde temos o apoio da Prefeitura de Araras. A prefeitura é o orgão municipal a qual rege uma cidade, este orgão é divido em diversos setores e um desses é a Secretaria da Saúde onde o AgendaMed está diretamente envolvido. </p>
								</div>
							</div>
							<div class="col-xs-6">
								<a href="https://araras.sp.gov.br/home/" target="_blank"><img src="IMG/araras.png" alt="Araras"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid footer">
				<div class="row page-footer" id="footer">
					<div class="col-lg-2">
						<img src="IMG/trolls.png">
					</div>
					<div class="col-lg-5">
						<h5>Entre em contato conosco!</h5>
						<p> Telefone: (19)99715-1196 </p>
						<p> E-mail: contato@trolls.com.br </p>
					</div>
					<div class="col-lg-5">
						<div class="social-icons">
							<a href=""> <i class="fa fa-facebook" aria-hidden="true"></i> </a>
							<a href=""> <i class="fa fa-twitter" aria-hidden="true"></i> </a>
							<a href=""> <i class="fa fa-google" aria-hidden="true"></i> </a>
							<a href=""> <i class="fa fa-instagram" aria-hidden="true"></i> </a>
							<a href=""> <i class="fa fa-envelope" aria-hidden="true"></i> </a>
							<div class="socialtxt center-align">
								Acesse nossas redes sociais!
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid footer-copyright">
				<div class="row">
					<div class="col-xs-9">
						<span class="pull-left">Copyright © TROLLS 2020. Todos os direitos reservados.</span>            		
					</div>
					<div class="col-xs-3">
						<a class="pull-right" href="">Desenvolvedora</a>
					</div>       		            	
				</div>
			</div>
			<!-- JQUERY -->
			<script src="js/jquery-3.1.0.min.js"></script>
			<!-- BOOTSTRAP JS -->
			<script src="js/bootstrap.min.js"></script>
			<script type="text/javascript">
			$(function(){   
				var nav = $('#nav'); 
					$(window).scroll(function () { 
						if ($(this).scrollTop() > 100) { 
							nav.slideDown(150);
						} else { 
							nav.slideUp(150);
						} 
					});  
				});

				jQuery(document).ready(function($) { 
					$(".scroll").click(function(event){        
				 		event.preventDefault();
				  			$('html,body').animate({scrollTop:$(this.hash).offset().top}, 600);
				 	});
				});

				$(function () {
				  $('[data-toggle="tooltip"]').tooltip()
				});
		</script>
		</body>
		</html>