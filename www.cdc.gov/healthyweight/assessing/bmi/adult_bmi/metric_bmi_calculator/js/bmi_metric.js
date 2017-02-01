$(document).ready(function () {

//hide all results divs
$("#results").hide();
$(".bmiresults").hide();
$("#bmi_table").hide();
$("#obese_moreinfo").hide();

	
//Do this when Calculate button is clicked	
$("#calc").click(function() {

$("#calc_form").hide();
	$("#results").show();
	

	//get value for height - meters	
	var meters = $("input[name=meters]").val();
	
	//get value for weight - kilograms
	var kilograms = $("input[name=kilograms]").val();
	
	//calculate BMI
    var bmi = Math.round(kilograms * 10 / meters / meters) / 10;
	
	//calculate min weight and max weight for nomral BMI
	var minweight = meters * meters * 18.5;
	var maxweight = meters * meters * 24.9;
	var minweight = Math.round(minweight*10)/10; 
	var maxweight = Math.round(maxweight*10)/10;

	
	//Append values to specific HTML tags
	$(".hResults").empty().append("Height: " + meters + " meters");
	$(".wResults").empty().append("Weight: " + kilograms + " kilograms");
	$(".bmiNum").empty().append(bmi);
	$(".MinW").empty().append(minweight);
	$(".MaxW").empty().append(maxweight);
			
	
//---------Show divs based on BMI value--------	
	
	if (bmi <= 12) {
		//error
		$(".bmiresults").hide();
		$("#error").show();
		$("#bmi_table").hide();
	}
	else if (bmi > 12 && bmi < 18.5) {
		//underweight
		$(".bmiresults").hide();
		$(".bmi_type").empty().append("Underweight");
		$("#underweight").show();
		$('[class^="T_"]').addClass("highlight").not(".T_underweight").removeClass("highlight");
		$("#bmi_table").show();
	}
	else if (bmi >= 18.5 && bmi <25){
		//normal
		$(".bmiresults").hide();
		$(".bmi_type").empty().append("Normal");
		$("#normal").show();
		$('[class^="T_"]').addClass("highlight").not(".T_normal").removeClass("highlight");
		$("#bmi_table").show();
		
	}
	else if (bmi >= 25 && bmi <30){
		//overweight
		$(".bmiresults").hide();
		$(".bmi_type").empty().append("Overweight");
		$("#overweight").show();
		$("#obese_moreinfo").show();
		$('[class^="T_"]').addClass("highlight").not(".T_overweight").removeClass("highlight");
		$("#bmi_table").show();			
	}
	else if (bmi >=30) {
		//obese
		$(".bmiresults").hide();
		$(".bmi_type").empty().append("Obese");
		$("#obese").show();
		$("#obese_moreinfo").show();
		$('[class^="T_"]').addClass("highlight").not(".T_obese").removeClass("highlight");
		//$(".T_obese").removeClass().addClass("highlight");
		$("#bmi_table").show();
	}
	else {
	//error
	$(".bmiresults").hide();
	$("#error").show();
	$("#bmi_table").hide();
		
	}
//------------	
//remove values from input fields
$('#bmicalculator').find('input:text').val('');
	
});

}); 