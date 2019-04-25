function proximo(lado){
    var pag = 0;
    if(pag==0){
        if(lado == 'frente'){

            if (nome.value != '' && sobrenome.value != '' && email.value != '' && senha.value != '' && confirmar_senha.value != '') {
                conteudo.style.display = 'none';
                conteudo2.style.display = 'block';
                conteudo3.style.display = 'none';
                aaa.innerHTML = 'Voltar';
                tornarLogin.innerHTML = 'Login';
                ReturnLogin.style.display = 'block';
                topo.style.display = 'none';
                pag = 2;
            }
            else {
                swal("Preencha todos os campos!", "", "warning");
                pag=0;
            }
        }else{
            pag = 1;
        }
    }else if(pag==1){
        pag = 3;
        conteudo2.style.display = 'none';
        conteudo3.style.display = 'block';
        conteudo.style.display = 'none';
        titulo.innerHTML = 'Informações do Galpão';
        tornarLogin.innerHTML = 'Login';
        ReturnLogin.style.display = 'block';
        topo.style.display = 'none';
    }else if(pag==0){
        conteudo3.style.display = 'none';
        conteudo.style.display = 'block';
        conteudo2.style.display = 'none';
        titulo.innerHTML = 'Cadastro';
        ReturnLogin.style.display = 'none';
        topo.style.display = 'block';
    }else{
        window.location = 'login.html';
    }
}
function irCadastro(){
    window.location = 'cadastro.html';
}
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
            swal("Preencha os campos para fazer login", "", "warning");
        }else{
            swal("Usuário ou senha incorretos", "Preencha novamente", "warning");
        }

    }
    // Fim Script de login
