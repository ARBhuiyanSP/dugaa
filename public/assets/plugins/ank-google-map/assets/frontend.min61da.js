!function(o,e){"use strict";function n(){var e=new google.maps.LatLng(parseFloat(t.map.lat),parseFloat(t.map.lng)),n={zoomControl:!t.controls.zoomControl,zoomControlOptions:{position:google.maps.ControlPosition.RIGHT_CENTER},mapTypeControl:!t.controls.mapTypeControl,streetViewControl:!t.controls.streetViewControl,scrollwheel:!t.mobile.scrollwheel,center:e,zoom:parseInt(t.map.zoom),mapTypeId:google.maps.MapTypeId[t.map.type],mapTypeControlOptions:{style:google.maps.MapTypeControlStyle.DROPDOWN_MENU,position:google.maps.ControlPosition.TOP_LEFT},styles:t.map.styles,fullscreenControl:!t.controls.fullscreenControl,fullscreenControlOptions:{position:google.maps.ControlPosition.RIGHT_TOP},gestureHandling:t.mobile.gestureHandling||"auto"},l=new google.maps.Map(a,n);if(1===t.marker.enabled){var i=new google.maps.Marker({position:e,map:l,optimized:!1,title:t.marker.title,icon:t.marker.file||t.marker.color||""});if("NONE"!==t.marker.animation&&i.setAnimation(google.maps.Animation[t.marker.animation]),1===t.info_window.enabled){var s=new google.maps.InfoWindow({content:t.info_window.text});google.maps.event.addListener(l,"click",function(){s.close()})}}1===t.marker.enabled&&1===t.info_window.enabled&&(google.maps.event.addListener(i,"click",function(){s.open(l,i),i.setAnimation(null)}),1===t.info_window.state&&o.setTimeout(function(){s.open(l,i),i.setAnimation(null)},2e3));var r;google.maps.event.addDomListener(o,"resize",function(){r&&clearTimeout(r),r=o.setTimeout(function(){l.setCenter(e)},300)}),o.AGM={map:l,marker:i,infoWindow:s},o.dispatchEvent(new CustomEvent("agm.loaded",{detail:AGM}))}var t=o._agmOpt,a=e.getElementById("agm-canvas");"undefined"!=typeof a&&a&&("object"==typeof google&&google.maps?google.maps.event.addDomListener(o,"load",n):(a.innerHTML='<p class="map-not-loaded" style="text-align: center">Failed to load Google Map.<br>Please try again.</p>',a.style.height="auto"))}(window,document);
