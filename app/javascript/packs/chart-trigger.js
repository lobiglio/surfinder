const chartTrigger = () => {

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
};

export { chartTrigger }
