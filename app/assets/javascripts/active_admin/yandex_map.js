$(document).ready(function(){
  ymaps.ready(init);

  function init() {
    map = new ymaps.Map("map", {
        center: [53.9, 27.56],
        zoom: 12
    });
    map.controls
    .remove('trafficControl')
    .remove('typeSelector')
  }
});
