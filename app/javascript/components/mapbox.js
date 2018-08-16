mapboxgl.accessToken = 'pk.eyJ1Ijoicm9uZmxleHh4IiwiYSI6ImNqa3diZmx1cjA3NXAzdnFsNGV6aXlpbWgifQ.SyUs21Wgs6mUdWb-gqlZjw';

let mapHolder = document.getElementById('map');

if (mapHolder) {
  var marker = JSON.parse(mapHolder.dataset.marker);
  console.log(marker);

  var map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/streets-v9', // stylesheet location
    center: [marker.lng, marker.lat], // starting position [lng, lat]
    zoom: 14 // starting zoom
  });

  var marker = new mapboxgl.Marker()
                           .setLngLat([marker.lng, marker.lat])
                           .addTo(map);

}
