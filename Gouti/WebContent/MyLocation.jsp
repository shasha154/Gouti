<!DOCTYPE html>
<html>
  <head>
    <title>Geolocation</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBrGZXeQd4zQIKyzFd2NDXVrfvwxou1w5I">
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
  
  
    <div id="map"></div>
   
    <script>
    
    	  $(document).ready(function(){
    		 
    		  $.ajax({
    			    url: "name.csv",
    			    async: false,
    			    dataType: "text",
    		        success: function(data) {processData(data);}
    		     });
    	  });
   function processData(allText)
   {
	   var count =0;
	   var geocoder = new google.maps.Geocoder();
	    var map;
	   var allTextLines = allText.split('\r');
	   
	    var headers = allTextLines[0].split(',');
    			           	
    var mapOptions = {
    zoom:0,
    center: new google.maps.LatLng(-34.397, 150.644),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
 	 var mapelement = document.getElementById('map');
	 map = new google.maps.Map(mapelement, mapOptions);
    			         
  		
    		    		    /* var addresses = $.csv.toArrays(state_city, {
    		        		  delimiter:"'", // sets a custom value delimiter character
    		        		  separator:';', // sets a custom field separator character
    		        		}); */
	 for (var i = 1; i < allTextLines.length; i++)
		{
			count++;
	     	        var data1 = allTextLines[i].split(',');
		
	     	      //alert(data1);
	     	          $.getJSON('http://maps.googleapis.com/maps/api/geocode/json?address='+data1[0]+'&sensor=false', null, function (data) {
	     	              var p = data.results[0].geometry.location;
	     	              
	     	            //  var latlng = new google.maps.LatLng(p.lat, p.lng);
	     	             var beachMarker =  new google.maps.Marker({
	     	                  position:  {lat: p.lat, lng: p.lng},
	     	                  map: map
	     	              });

	     	          });
	     	     

		   }
	        		
		}
    		  
    		    	  
    	  </script>
    	  
    
  </body>
</html>