$(document).ready(function () {

//hide all results divs
$("#results").hide();
$("#obese_moreinfo").hide();
$(".bmiresults").hide();
$("#bmi_table").hide();
	
//Do this when Calculate button is clicked	
$("#calc").click(function() {

$("#calc_form").hide();
	$("#results").show();
	

	//get value for height - feet	
	var feet = $("input[name=feet]").val();
	//get value for height - inches and set value to 0 if field is empty
                 var inches = $("input[name=inches]").val() || 0;
	//calculate total inches 
	var totalInches = eval(feet*12) + eval(inches);
	//get value for weight
	var totalWeight = $("input[name=pounds]").val();
	//convert to integer
    var weight = parseFloat(totalWeight, 10);
    var height = parseFloat(totalInches, 10);
	//calculate BMI
    var bmi = Math.round(weight * 703 * 10 / height / height) / 10;
	//calculate min weight and max weight for nomral BMI
	var minweight = Math.round(18.5 * height * height / 703);
	var maxweight = Math.round(24.9 * height * height / 703);

	// display BMI in text box
//    $('#results').val(isNaN(bmi) ? '' : bmi);
	
	
	//Append values to specific HTML tags
	$(".hResults").empty().append("Height: " + feet + " feet, " +inches + " inches" );
	$(".wResults").empty().append("Weight: " + weight + " pounds");
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

	
});



});
 