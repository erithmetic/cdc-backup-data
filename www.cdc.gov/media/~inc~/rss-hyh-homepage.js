<!--//
$.ajaxSetup({ cache: false });
$.getJSON("https://www2c.cdc.gov/podcasts/feed.asp?feedid=512&maxnumber=10&format=json&callback=?",
function (data) {
var count_items = 0;
$.each(data.entries, function (i, entry) {
var xxdate=new Date(Date($.now())).getTime()
var idate=new Date(entry.pubdate).getTime()
if (idate <= xxdate) {	

if (count_items < 1) {	
var category = (entry.categories && entry.categories.length > 0) ? entry.categories[0] : '';
var dtx=entry.pubdate.substr(5, 2);


var newItem = $('<div class="hyhcontent" />');
var titlex=entry.title;
var namez = $('<p class="bold" />').html(titlex);

newItem.append(namez);
// If there is an enclosure URL that points to an image then render it.
var regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;
if (regex.test(entry.enclosureurl)) {
var imgz=$('<img class="fancy-border pull-left span4 margin-right-ten"  style="padding-left:0px; margin-left:0px" />').attr('src', entry.enclosureurl)
.attr('alt', entry.title);	
	   
var divx=$('<div/>').html(imgz)	;
var aaa = $('<a class="item-title" />').html(divx);
aaa.attr("href", entry.link);							
newItem.append(aaa);
}
//End Image Boolean
var desc=entry.description;
var d = new Date();
if (isNaN(Date.parse(entry.pubdate))) {
d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4)));
} else {
d.setTime(Date.parse(entry.pubdate));
}
var dtz = d.toLocaleString()
dtz=dtz.substring(0,(dtz.length)-11);
dtz=(dtz);
//newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString().replace(':00 ', ' ')));
var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
var displayDate = dayNames[d.getDay()].toUpperCase() + ", " + monthNames[d.getMonth()].toUpperCase() + " " + d.getDate() + ", " + d.getFullYear();

newItem.append($('<p class="item-pubdate" />').html(displayDate));

newItem.append($('<p/>').html(desc));
var a = $('<a />').html("<p class='morelink'>Learn More></p>");
a.attr("href", entry.link);
newItem.append(a);

//list.append(newItem);

$('#hyhcontent').append(newItem);





}
//end if greater than ##
count_items = count_items + 1 ;	
}
});
});
//--> 




                            
 