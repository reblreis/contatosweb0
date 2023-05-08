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
		class="container d-flex justify-content-center
align-items-center vh-100">
		<div class="card">
			<div class="card-header text-center">
				<h3>Contatos WEB</h3>
				<p>Acesse sua conta</p>
			</div>
			<div class="card-body bg-light">
				<p class="text-center">
					Para ter acesso aos contatos web, <br />entre com:
				</p>
				<hr/>
				
				<div class="text-danger text-center">
					<h5>${mensagem_erro}</h5>
				</div>
				
				<form method="post" action="auth_user">
							
					<div class="mb-3">
						<label for="email" class="form-label">
						Email
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
						Senha
						</label> 
						<input
							type="password" 
							class="form-control" 
							id="password"
							name="password"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}"
							title="A senha deve conter pelo menos uma letra maiúscula, uma 
							letra minúscula, um número e um caractere especial. Além 
							disso, deve ter de 8 a 16 caracteres."
							required>
					</div>
					<div class="text-center">
						<button 
							type="submit" 
							class="btn btn-primary">
							Acessar
						</button>
					</div>
				</form>
			</div>
			<div class="card-footer text-center">
				<p>
					Não possui uma conta? <a href="/contatosweb/register_user">Crie uma agora</a>
				</p>
				<p>
					Esqueceu sua senha? <a href="/contatosweb/password_user">Recupere agora</a>
				</p>
				<div class="mt-2 mb-1 text-center">
					<small>REGINA REIS</small>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
