// JavaScript Document
function returnDocument() {
        var full_path = window.location.pathname;
        return full_path;
}

function styleMenu() {
	var full_path = returnDocument();

    var end = (full_path.indexOf("?") == -1) ? full_path.length : full_path.indexOf("?");
	var curFile = full_path.substring(full_path.lastIndexOf("/")+1, end);

	if(curFile == ''){
		full_path = full_path + 'index.html';	
	}

	var patharray = full_path.split("/");
	var folder = patharray[patharray.length - 2];

	switch(folder) {
		case 'blood':
		full_path = '/dpdx/diagnosticProcedures/blood/index.html';
		break;

		case 'stool':
		full_path = '/dpdx/diagnosticProcedures/stool/index.html';
		break;

		case 'serum':
		full_path = '/dpdx/diagnosticProcedures/serum/index.html';
		break;

		case 'other':
		full_path = '/dpdx/diagnosticProcedures/other/index.html';
		break;
		
		default:
		break;
	}
	
	var links = $('.top-nav').find('a');

	$(links).each(function(i) {
		if($(this).attr('href').toUpperCase() == full_path.toUpperCase()) {
			$(this).parent().addClass("current");
			return false;
		}
	});
}

$(document).ready(function(){ 
	styleMenu();
});
