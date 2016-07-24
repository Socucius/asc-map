$(document).ready(function(){
  ymaps.ready(init);

  function init() {
    var lat = $('#map').attr('data-lat')
    var lon = $('#map').attr('data-lon')
    var placemark;
    var map = new ymaps.Map("map", {
        center: [53.9, 27.56],
        zoom: (lat && lon) ? 14 : 12
    });

    if(lat && lon) {
      placemark = new ymaps.Placemark([lat, lon], {
        hintContent: 'Resently added place'
      });
      map.geoObjects.add(placemark);
    }
    map.controls
    .remove('trafficControl')
    .remove('typeSelector')
  }
});
