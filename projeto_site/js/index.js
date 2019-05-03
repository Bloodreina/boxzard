// função do simulador financeiro

function calcula(){

    if(func.value == '' || sal.value == '' || metro.value == ''){
        swal("Atenção", "Preencha todos os campos!", "warning"); 
    }
    if(func.value!= '' && sal.value !='' && metro.value!= ''){

        var salario= (Number(sal.value) * 1.8);
        var mostra=Number(func.value)* salario;
        var custo=(Number(metro.value)/10)* 200;
        var custoFormatado = custo.toLocaleString('pt-BR',{style:'currency',currency:'BRL'});
        var subtracao= custo + mostra;
        var subtracaoFormatada = subtracao.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL'});
        
        var economia= subtracao * 12;
        var economiaFormatada = economia.toLocaleString('pt-BR',{style:'currency',currency:'BRL'});
        
        mensagem.innerHTML= `Aquirindo nosso produto...<br> Pagando apenas o valor de ${custoFormatado} por mês. <br> Você economizará : ${subtracaoFormatada} por mês e ${economiaFormatada} por ano.`;
        aaa.classList.add("animation");
        mensagem.style.display = "block";
        mensagem.style.opacity = 1;
        
    }

}

function telaPedido(){
    window.location ='login/cadastro.html';
}