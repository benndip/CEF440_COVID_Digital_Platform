<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<title>Display a map on a webpage</title>
	<meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no">
	<link href="https://api.mapbox.com/mapbox-gl-js/v2.3.0/mapbox-gl.css" rel="stylesheet">
	<script src="https://api.mapbox.com/mapbox-gl-js/v2.3.0/mapbox-gl.js"></script>
	<style>
	body { margin: 0; padding: 0; }
	#map { position: absolute; top: 0; bottom: 0; width: 100%; }
	</style>
	</head>
<body>
<div id="map"></div>
<script>
	mapboxgl.accessToken = 'pk.eyJ1IjoiYmVubmRpcCIsImEiOiJjazRtdHVqcmgyZGo0M21xd3ZyM2RucjhtIn0.5FYNvQSOsGYgXP7n_pft5A';
	var map = new mapboxgl.Map({
	container: 'map', // container id
	style: 'mapbox://styles/mapbox/streets-v11', // style URL
	center: [9.5, 4.5], // starting position [lng, lat]
	zoom: 9 // starting zoom
});
	// Create a default Marker and add it to the map.
	var marker1 = new mapboxgl.Marker()
	.setLngLat([9.5729, 5.70651])
	.addTo(map);
	 
	// Create a default Marker, colored black, rotated 45 degrees.
	var marker2 = new mapboxgl.Marker({ color: 'black'})
	.setLngLat([10.65147, 5.608166])
	.addTo(map);
</script>
 
</body>
</html>	