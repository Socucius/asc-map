$(document).ready(function(){
  if($('#map').length > 0) {
    $.getScript("https://api-maps.yandex.ru/2.1/?lang=ru_RU").done(function(){
      ymaps.ready(init);
    })
  }

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

    map.events.add('click', function(e) {
      var coords = e.get('coords');
      $('#place_latitude').val(coords[0]);
      $('#place_longitude').val(coords[1]);
    });
    map.controls
    .remove('trafficControl')
    .remove('typeSelector')
  }
});
