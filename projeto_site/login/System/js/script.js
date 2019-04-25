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