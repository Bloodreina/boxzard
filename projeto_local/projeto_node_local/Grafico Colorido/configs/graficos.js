var socket = io.connect('http://localhost:4000'); //Se conecta ao servidor

var temper = document.getElementById('temperatura').getContext('2d');
var t1 = new Chart(temper, {
    // O tipo de gráfico que será criado
    type: 'line',
    // As configurações do gráfico
    data: {
    labels: [],
    datasets: [{
        label: "Temperatura",
        borderColor: "#ad2929",
        data: [],
        fill: false,
        pointStyle: 'circle',
        backgroundColor: '#ad2929',
        pointRadius: 4,
        pointHoverRadius: 5,
        lineTension: 0,
    }]
    },
    // Aqui será Configurado o título do gráfico e deixá-lo responsivo
    options: {
        responsive: true,
        hoverMode: 'index',
        stacked: false,
        title: {
            display: true,
            text: 'Temperatura',
            fontSize: 30,
            fontColor: "#ad2929",
            fontFamily: " 'ZCOOL XiaoWei', serif",
            fontStyle: "normal"
        },
        scales: {
            yAxes: [{
                ticks: {
                    // Inclui a °C para o gráfico de Temperatura
                    callback: function(value) {
                        return value + '°C';
                    }
                }
            }]
        }
    }
    
});

var umid = document.getElementById('umidade').getContext('2d');
var u1 = new Chart(umid, {
    // O tipo de gráfico que será criado
    type: 'line',
    // As configurações do gráfico
    data: {
    labels: [],
    datasets: [{
        label: "Umidade",
        borderColor: "#299fad",
        data: [],
        fill: false,
        pointStyle: 'circle',
        backgroundColor: '#299fad',
        pointRadius: 4,
        pointHoverRadius: 5,
        lineTension: 0,
    }]
    },
    // Aqui será Configurado o título do gráfico e deixá-lo responsivo
    options: {
            responsive: true,
            hoverMode: 'index',
            stacked: false,
            title: {
                display: true,
                text: 'Umidade',
                fontSize: 30,
                fontColor: "#299fad",
                fontFamily: " 'ZCOOL XiaoWei', serif",
                fontStyle: "normal"
            },
            scales: {
                yAxes: [{
                    ticks: {
                        // Inclui a porcentagem para o gráfico de umidade
                        callback: function(value) {
                            return value + '%';
                        }
                    }
                }]
            }
    }
    
});
