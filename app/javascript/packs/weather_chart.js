const mouseMove = () => {

  const cursor = document.getElementById("cursor-move");

  const windArray = JSON.parse(cursor.dataset.wind);
  const swellArray = JSON.parse(cursor.dataset.swell);
  const timestamps = Object.keys(windArray, swellArray);
  const minTime = Number(timestamps[0]);
  const maxTime = Number(timestamps[39]);
  const minPixel = 172;
  const maxPixel = 372;
  const a = ( maxTime - minTime ) * 1.0 / ( maxPixel - minPixel );
  const b = minTime - a * minPixel;
  // console.log(maxTime);
  const windElement = document.getElementById("wind");
  const swellElement = document.getElementById("swell");
  // console.dir(cursor);
  cursor.addEventListener("mousemove", function(event) {
    const x = event.clientX;
    console.log(a * x + b);
    const nearTime = findNearTime((a * x + b), timestamps);
    console.log(nearTime);
    // console.log(windArray[nearTime.toString()]);
    console.log(swellArray[nearTime.toString()]);

    // windElement.style.transform = `rotate(${windArray[nearTime.toString()]}deg)`;
    // swellElement.style.transform = `rotate(${(x - 172) * 360.0/200 + 20 }deg)`;
  });
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
