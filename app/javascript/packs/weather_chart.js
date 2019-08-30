const mouseMove = () => {
  const cursor = document.getElementById("chart-container");

  if(cursor) {

    const windArray = JSON.parse(cursor.dataset.wind);
    const swellArray = JSON.parse(cursor.dataset.swell);
    const chartBox = document.querySelector(".highcharts-plot-background");
    const timestamps = Object.keys(windArray, swellArray);
    const minTime = Number(timestamps[0]);
    const maxTime = Number(timestamps[39]);
    const minPixel = chartBox.getBoundingClientRect().left;
    const maxPixel = chartBox.getBoundingClientRect().left + chartBox.getBoundingClientRect().width;
    const a = ( maxTime - minTime ) * 1.0 / ( maxPixel - minPixel );
    const b = minTime - a * minPixel;
    const windElement = document.getElementById("wind");
    const swellElement = document.getElementById("swell");
    cursor.addEventListener("mousemove", function(event) {
      const x = event.clientX;
      const nearTime = findNearTime((a * x + b), timestamps);
      windElement.style.transform = `rotate(${windArray[nearTime.toString()]}deg)`;
      swellElement.style.transform = `rotate(${swellArray[nearTime.toString()] + 180 }deg)`;
    });
  }
};


const findNearTime = (myTime, timestamps) => {
  let diffAbsMin = 100000;
  let nearTime = 0;

  timestamps.forEach((time) => {
    let diffAbs =  Math.abs(time - myTime)
    if (diffAbs < diffAbsMin) {
      diffAbsMin = diffAbs;
      nearTime = time;
    }
  });
  return nearTime
}


export { mouseMove }
