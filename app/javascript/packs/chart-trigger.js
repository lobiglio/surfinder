const chartTrigger = () => {

  // définir une constant js qui correspond à ta div weather-chart
  const weather_chart = document.querySelector("#weather");

  const tabs = document.querySelectorAll(".select-tabs");

  tabs.forEach(tab => {
    tab.addEventListener("click", () => {
      if (tab.firstChild.data === 'Surf forecast') {
        weather_chart.classList.remove('d-none');
      } else {
        weather_chart.classList.add('d-none'); }
    })
  })

  // chartShow.addEventListener("click", (event) => {
  //   // au clic, je veux enlever la class 'd-none' de ma div 'weather-chart'
  //   // event.currentTarget.toggle("weather")
  //   weather_chart.hidden = false;
  // });

  // // ajouter un event listenenr sur les autres onglets
  // chartHide.addEventListener("click", (event) => {
  //   // au clic, je veux rajouter la class 'd-none' de ma div 'weather-chart'
  //   // event.currentTarget.classlist.toggle("weather")
  //   weather_chart.hidden = true;
  // });
};

export { chartTrigger }
