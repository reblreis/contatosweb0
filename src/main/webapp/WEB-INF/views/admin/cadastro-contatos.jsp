<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Web Contatos</title>
	
	<!-- Incluindo o componente para controle de cache -->
	<jsp:include page="/WEB-INF/views/components/cache-control.jsp" />
	
	<!-- Adiciona os arquivos CSS do Bootstrap -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css" />
	
</head>
<body>

	<!-- Incluindo o componente navbar -->
	<jsp:include page="/WEB-INF/views/components/navbar.jsp" />
	<!-- Cards -->
	<div class="container mt-4">
		<div class="mt-4 mb-4">
			<h5>Cadastro de Contatos</h5>
			<p>Preencha o formul�rio para incluir um contato em sua agenda.</p>
			<hr />
		</div>
	</div>
	
	<!-- Adiciona os arquivos JavaScript do Bootstrap -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.min.js"></script>
</body>
</html>