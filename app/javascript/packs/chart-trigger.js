const chartTrigger = () => {

const trigger = document.getElementById("forecast");
// définir une constant js qui correspond à ta div weather-chart query selector
const weather_chart = document.querySelectorAll("weather")
trigger.addEventListener("click", (event) => {
  // au clic, je veux enlever la class 'd-none' de ma div 'weather-chart'
  event.currentTarget.toggle("weather-chart")
});

// ajouter un event listenenr sur les autres onglets
const tabs = document.getElementById("home", "packs", "spot", "reviews")
// au clic rajouter la classe d-none à ma div 'weather-chart'
  event.currentTarget.toggle("weather-chart")

}

export { chartTrigger }
