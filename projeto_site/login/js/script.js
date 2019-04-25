function next(direction){

    if(pagina == 1){

        if(direction=='front'){

            if(nome.value == '' || sobrenome.value == '' || email.value == '' || senha.value == '' || confirmar_senha.value == ''){
                swal("Atenção", "Preencha todos os campos!", "warning"); //Configurar certinho o swal
            }else{
                conteudo.style.display = 'none';
                conteudo2.style.display = 'block';
                aaa.innerHTML = 'Voltar';
                tornarLogin.innerHTML = 'Login';
                ReturnLogin.style.display = 'block';
                topo.style.display = 'none';
                pagina++;
            }
        }else{
            window.location = 'login.html';
        }

    }else if(pagina == 2){

        if(direction=='front'){

            if(cpf.value == '' || local.value == '' || numero_casa.value == '' || complemento.value == ''){
                swal("Atenção","Preencha todos os campos!", "warning");
            }else{
                conteudo2.style.display = 'none';
                conteudo3.style.display = 'block';
                tornarLogin.innerHTML = 'Login';
                ReturnLogin.style.display = 'block';
                topo.style.display = 'none';
                titulo.innerHTML = 'Informações do Galpão';
                pagina++;
            }

        }else{
            conteudo.style.display = 'block';
            conteudo2.style.display = 'none';
            ReturnLogin.style.display = 'none';
            topo.style.display = 'block';
            aaa.innerHTML = 'Login';
            pagina--;
        }

    }else if(pagina == 3){

        if(direction=='front'){
            if(tamanho.value == '' || qtd_ar.value == '' || potencia.value == ''){
                swal("Atenção", "Preencha todos os campos!", "warning");
            }else{
                swal("Concluído","Cadastro efetuado com sucesso!","success").then((value) =>{
    
                    window.location = 'login.html';
                });
            }
        }else{
            conteudo3.style.display = 'none';
            conteudo2.style.display = 'block';
            titulo.innerHTML = 'Cadastro';
            aaa.innerHTML = 'Voltar';
            pagina--;
        }
    }
}
//Entra para a Tela de Cadastro
function irCadastro(){
    window.location = 'cadastro.html';
}

//Retorna a tela de Login
function irLogin(){
    window.location = 'login.html';
}

function irIndex(){
    window.location = '../index.html';
}

// Inicio Script de login
var user = "admin", password = "admin";

function logar(){
    if(user == login.value && password == senha.value){
        window.location = 'System/home.html';
    }else if(login.value == "" || senha.value == ""){
        swal("Atenção","Preencha todos os campos!", "warning");
    }else{
        swal("Usuário ou senha incorretos!", "Preencha novamente", "warning");
    }

}
// Fim Script de login
