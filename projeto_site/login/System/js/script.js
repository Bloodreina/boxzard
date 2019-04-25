	
	// Inicio Script de mascara para o campo telefone na tela perfil
	var aux = 0;

	function cadastrarGalpao(){
	    window.location = 'services.html';
	}
	function adicionarTelefone(campo){
	    
	    if (aux == 0) {
	    	telefones.innerHTML = `<option>${campo}</option>`;

	    	aux = 1
	    }else{
			telefones.innerHTML += `<option>${campo}</option>`;	    	
	    }

	}
	// Fim Script de mascara para o campo telefone na tela perfil

	// Inicio script de com/sem notificação na tela home

		function notificacao(n){
			let aux = "notificacao" + n;

			notificacao1.style.display = "none";

			semNotificacao.style.display = "block";
		}

	// Fim script de com/sem notificação na tela home	