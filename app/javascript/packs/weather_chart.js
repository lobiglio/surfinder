const mouseMove = () => {

  const cursor = document.getElementById("cursor-move");

  const windArray = JSON.parse(cursor.dataset.wind);
  const minTime = windArray[0][0];
  const maxTime = windArray[39][0];
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
    // windElement.style.transform = `rotate(${(x - 172) * (maxTime - minTime)/200  }deg)`;
    // swellElement.style.transform = `rotate(${(x - 172) * 360.0/200 + 20 }deg)`;
  });
}


export { mouseMove }
