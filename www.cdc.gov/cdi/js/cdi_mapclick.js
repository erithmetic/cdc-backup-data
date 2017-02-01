$(document).ready(function () {


	var SERVER = 'http://nccd.cdc.gov/cdi/rdPage.aspx?rdReport=DPH_CDI.';
	

	//click by location------------------------------------------------------
	$('form#form_location').submit(function(event){
		event.preventDefault();

		var $location = $('#location').val();

		if($location!=='NA'){

			if( $location>0 && $location<10) $location='0'+$location;

			__server = SERVER + 'ExploreByLocation&islLocation=' + $location + '&islTopic=ALC&islYear=9999';
			//console.log("Dropdown - This is the url that will load: "+__server);

			window.location.href=__server;
			__server = SERVER;

		}//./!==NA

	});//----------------------------------------------------------------------

	
	//click on the Map --------------------------------------------------------
	$('#usamap_w580_h360 svg').on('click', function(event){

		if( $(this).parent().attr('id') !== $(event.target).parent().attr('id') ){

			var $mapLocation =  $(event.target).parent().attr('data-state-id') ;
		
			if( $mapLocation>0 && $mapLocation<10) $mapLocation='0'+$mapLocation;

			__server = SERVER + 'ExploreByLocation&islLocation=' + $mapLocation + '&islTopic=ALC&islYear=9999';
			//console.log("Map - This is the url that will load: "+__server);
			window.location.href=__server;
			__server = SERVER;
		
		}//./click on a state svg

	});//./map click-----------------------------------------------------------

});// ./end 

  




$(document).ready(function(){    
    $("#definition_go").click(function(e){
e.preventDefault();
var pageurl = $("#indicatordefinition").val();
     var Newurl = "/cdi/definitions/"+pageurl;    
window.location.href = Newurl;
    });
   });


 