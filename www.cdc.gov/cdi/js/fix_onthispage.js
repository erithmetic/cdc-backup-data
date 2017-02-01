$(document).ready(function()
{
var onpagemod = $( "#onthispage2:has(.listContainer)" ).parent();
$(onpagemod).removeClass("span11 pull-right");
$(onpagemod).parent().addClass("span18");
$( "<br clear='all'>" ).insertAfter(onpagemod);
}); 