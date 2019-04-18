function proximo(pag){
    if(pag==1){
        conteudo.style.display = 'none';
        conteudo2.style.display = 'block';
        conteudo3.style.display = 'none';
        aaa.innerHTML = 'Voltar';
    }else if(pag==2){
        conteudo2.style.display = 'none';
        conteudo3.style.display = 'block';
        conteudo.style.display = 'none';
        titulo.innerHTML = 'Informações do Galpão';
    }else if(pag==0){
        conteudo3.style.display = 'none';
        conteudo.style.display = 'block';
        conteudo2.style.display = 'none';
        titulo.innerHTML = 'Cadastro';
        aaa.innerHTML = 'Login';
    }else{
        window.location = 'login.html';
    }
    if(pag=="cadastro"){
        window.location = 'cadastro.html';
    }
}
function entrar(){
    window.location = 'System/home.html';
}