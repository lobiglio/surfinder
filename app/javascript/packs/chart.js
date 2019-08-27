import Highcharts from 'highcharts';

require('highcharts/modules/exporting')(Highcharts);


const cursor = document.getElementById("cursor-move");

// const windArray = JSON.parse(cursor.dataset.wind);
// const swellArray = JSON.parse(cursor.dataset.swell);
const swellArray = JSON.parse(cursor.dataset.height);
const swellHeight = Object.values(swellArray);
const swellTime = Object.keys(swellArray);
Highcharts.chart('chart-container', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Surf forecast'
    },
    subtitle: {
        text: 'Source: magicseaweed.com'
    },
    xAxis: {
        categories: swellTime,
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Height (m)'
        }
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} m</b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Swell Height',
        data: swellHeight

    }]
});

