// função do simulador financeiro

function calcula(){
    if(func.value!= '' && sal.value !='' && metro.value!= ''){

        var salario= (Number(sal.value) * 1.8);
        var mostra=Number(func.value)* salario;
        var custo=(Number(metro.value)/10)* 200;
        var custoFormatado = custo.toLocaleString('pt-BR',{style:'currency',currency:'BRL'});
        var subtracao= custo + mostra;
        var subtracaoFormatada = subtracao.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL'});
        
        var economia= subtracao * 12;
        var economiaFormatada = economia.toLocaleString('pt-BR',{style:'currency',currency:'BRL'});
        
        mensagem.innerHTML= `Adquirindo nosso sistema você economizará : ${subtracaoFormatada} por mês e ${economiaFormatada} por ano.<br> Pagando apenas o valor de ${custoFormatado} por mês .`;
        aaa.classList.add("animation");
        mensagem.style.display = "block";
        mensagem.style.opacity = 1;
        
    }

}

function telaPedido(){
    window.location ='login/cadastro.html';
}