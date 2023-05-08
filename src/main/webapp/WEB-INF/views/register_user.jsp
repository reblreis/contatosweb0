<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Contatos WEB - Login</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-primary">
	<div
		class="container d-flex justify-content-center align-items-center vh-100">
		<div class="card">
			<div class="card-header text-center">
				<h3>Contatos WEB</h3>
				<p>Criar Conta</p>
			</div>
			<div class="card-body bg-light">
				<p class="text-center">
					Crie sua conta para ter acesso aos contatos web, <br />preencha
					todos os campos abaixo:
				</p>
				<hr />

				<div class="text-success text-center">
					<h5>${mensagem_sucesso}</h5>
				</div>
				<div class="text-danger text-center">
					<h5>${mensagem_erro}</h5>
				</div>

				<form method="post" action="register_user">
				
					<div class="mb-3">
					
						<div class="mb-3">
							<label for="nome" class="form-label">
								Entre com o seu nome:
							</label> 
							<input 
							type="text" 
							class="form-control" 
							id="nome"
							name="nome" 
							pattern="[A-Za-zÀ-Üà-ü\s]{8,150}"
							title="Por favor, informe um nome válido de 8 a 150 caracteres."
							required>
						</div>
						
						<label for="email" class="form-label">
							Entre com o seu email:
							</label> 
							<input 
							type="email" 
							class="form-control" 
							id="email"
							name="email"							
							required>
						</div>
						
					<div class="mb-3">					
						<label for="password" class="form-label">
							Entre com a sua senha:
						</label> 
						<input 
							type="password" 
							class="form-control" 
							id="senha"
							name="senha"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}"
							title="A senha deve conter pelo menos uma letra maiúscula, uma
							letra minúscula, um número e um caractere especial. Além disso, deve ter de 8 a 16 caracteres."
							required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Criar Conta</button>
					</div>
				</form>
			</div>
			<div class="card-footer text-center">
				<a href="/contatosweb/">Voltar para página inicial</a>
			</div>
			<div class="mt-2 mb-1 text-center">
				<small>REGINA REIS</small>
			</div>
		</div>
	</div>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>