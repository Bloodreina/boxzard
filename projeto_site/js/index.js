	// função do simulador financeiro

	function calcula(){
        var salario= (Number(sal.value) * 1.8);
        var mostra=Number(func.value)* salario;
        var custo=(Number(metro.value)/10)* 200;
        var custoFormatado = custo.toLocaleString('pt-BR',{style:'currency',currency:'BRL'});
        var subtracao= custo + mostra;
        var subtracaoFormatada = subtracao.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL'});

        var economia= subtracao * 12;
        var economiaFormatada = economia.toLocaleString('pt-BR',{style:'currency',currency:'BRL'});

        if(salario <=0){
            mensagem.innerHTML='';
            if (func.value <=0){
                mensagem.innerHTML='';
            }
            if(metro.value <=0){
                mensagem.innerHTML='';

            }
        }
        else{
            mensagem.innerHTML= `Adquirindo nosso sistema você economizará : ${subtracaoFormatada} por mês e ${economiaFormatada} por ano.<br> Pagando apenas o valor de ${custoFormatado} por mês .`;
            aaa.classList.add("animation");
            mensagem.style.display = "block";
            mensagem.style.opacity = 1;
        }
    
    }

