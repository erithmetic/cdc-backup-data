<!--//
$.ajaxSetup({ cache: false });
$.getJSON("http://www2c.cdc.gov/podcasts/feed.asp?feedid=183&maxnumber=150&pagesize=150&daterange=2&startdate=1/1/14&enddate=12/31/14&format=json&callback=?",
function (data) {
var count_items = 0;
var list = $('<ul />');
$('#decdiv').hide();
$('#novdiv').hide();
$('#octdiv').hide();
$('#sepdiv').hide();
$('#augdiv').hide();
$('#julydiv').hide();
$('#junediv').hide();
$('#maydiv').hide();
$('#aprildiv').hide();
$('#marchdiv').hide();
$('#febdiv').hide();
$('#jandiv').hide();
$('#decdivadv').hide();
$('#novdivadv').hide();
$('#octdivadv').hide();
$('#sepdivadv').hide();
$('#augdivadv').hide();
$('#julydivadv').hide();
$('#junedivadv').hide();
$('#maydivadv').hide();
$('#aprildivadv').hide();
$('#marchdivadv').hide();
$('#febdivadv').hide();
$('#jandivadv').hide();
$('#decdivtran').hide();
$('#novdivtran').hide();
$('#octdivtran').hide();
$('#sepdivtran').hide();
$('#augdivtran').hide();
$('#julydivtran').hide();
$('#junedivtran').hide();
$('#maydivtran').hide();
$('#aprildivtran').hide();
$('#marchdivtran').hide();
$('#febdivtran').hide();
$('#jandivtran').hide();
$('#decdivstate').hide();
$('#novdivstate').hide();
$('#octdivstate').hide();
$('#sepdivstate').hide();
$('#augdivstate').hide();
$('#julydivstate').hide();
$('#junedivstate').hide();
$('#maydivstate').hide();
$('#aprildivstate').hide();
$('#marchdivstate').hide();
$('#febdivstate').hide();
$('#jandivstate').hide();

//$('#rss-featurefeed-images-travelers').append(list);
$.each(data.entries, function (i, entry) {

var xxdate=new Date(Date($.now())).getTime()
var idate=new Date(entry.pubdate).getTime()
if (idate <= xxdate) {
	
var category = (entry.categories && entry.categories.length > 0) ? entry.categories[0] : '';
var dtx=entry.pubdate.substr(5, 2);
//First Press release Loop

if (category =="Press Release") {
	
var newItem = $('<li />');
var titlex=entry.title;
titlex=titlex.substring(0,(titlex.length)-16);
// If there is an enclosure URL that points to an image then render it.
//var regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;
//        if (regex.test(entry.enclosureurl)) {
//var imgz=$('<img  />').attr('src', entry.enclosureurl)
//       .attr('alt', entry.title);	
//var divx=$('<div class="cdc-caption item-image">').html(imgz)	;
//var aaa = $('<a class="item-title" />').html(divx);
//aaa.attr("href", entry.link);							
//newItem.append(aaa);
//}

var a = $('<a class="item-title" />').html(titlex);
a.attr("href", entry.link);
newItem.append(a);
//newItem.append($('<br/>'));
var d = new Date();
if (isNaN(Date.parse(entry.pubdate))) {
d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4)));
} else {
d.setTime(Date.parse(entry.pubdate));
}
//newItem.append($('<span />').html(category));


var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
var displayDate = " - " + dayNames[d.getDay()].toUpperCase() + ", " + monthNames[d.getMonth()].toUpperCase() + " " + d.getDate() + ", " + d.getFullYear();



var dtz = d.toLocaleString()
dtz=dtz.substring(0,(dtz.length)-11);
dtz=(displayDate);
//newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString().replace(':00 ', ' ')));
newItem.append($('<span class="item-pubdate" />').html(dtz));
newItem.append($('<div style="clear:both;"/>'));				
//list.append(newItem);
if (dtx ==01)	{
$('#january').text('January');
//$('#jandiv').append($('<h5/>').html("January"));
$('#janlist').append(newItem);
$('#jandiv').show();
}
if (dtx ==02)	{
$('#february').text('February');
$('#feblist').append(newItem);
$('#febdiv').show();
}
if (dtx ==03)	{
$('#march').text('March');
$('#marchlist').append(newItem);
$('#marchdiv').show();
}
if (dtx ==04)	{
$('#april').text('April');	
$('#aprillist').append(newItem);
$('#aprildiv').show();
}
if (dtx ==05)	{
$('#may').text('May');	
$('#maylist').append(newItem);
$('#maydiv').show();
}
if (dtx ==06)	{
$('#june').text('June');	
$('#junelist').append(newItem);
$('#junediv').show();
}
if (dtx ==07)	{
$('#july').text('July');	
$('#julylist').append(newItem);
$('#julydiv').show();
}
if (dtx ==08)	{
$('#august').text('August');	
$('#auglist').append(newItem);
$('#augdiv').show();
}
if (dtx ==09)	{
$('#september').text('September');		
$('#seplist').append(newItem);
$('#sepdiv').show();
}
if (dtx ==10)	{
$('#october').text('October');		
$('#octlist').append(newItem);
$('#octdiv').show();
}
if (dtx ==11)	{
$('#november').text('November');		
$('#novlist').append(newItem);
$('#novdiv').show();
}
if (dtx ==12)	{
$('#december').text('December');	
$('#declist').append(newItem);
$('#decdiv').show();
}

}
//end if greater than ##
count_items = count_items + 1 ;	
//Media Advisory
if (category =="Media Advisory") {
	
var newItem = $('<li />');
var titlex=entry.title;
titlex=titlex.substring(0,(titlex.length)-16);
// If there is an enclosure URL that points to an image then render it.
//var regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;
//        if (regex.test(entry.enclosureurl)) {
//var imgz=$('<img  />').attr('src', entry.enclosureurl)
//       .attr('alt', entry.title);	
//var divx=$('<div class="cdc-caption item-image">').html(imgz)	;
//var aaa = $('<a class="item-title" />').html(divx);
//aaa.attr("href", entry.link);							
//newItem.append(aaa);
//}

var a = $('<a class="item-title" />').html(titlex);
a.attr("href", entry.link);
newItem.append(a);
//newItem.append($('<br/>'));
var d = new Date();
if (isNaN(Date.parse(entry.pubdate))) {
d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4)));
} else {
d.setTime(Date.parse(entry.pubdate));
}
//newItem.append($('<span />').html(category));
var dtz = d.toLocaleString()
dtz=dtz.substring(0,(dtz.length)-11);
dtz=(" - " + dtz);
//newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString().replace(':00 ', ' ')));
newItem.append($('<span class="item-pubdate" />').html(dtz));
newItem.append($('<div style="clear:both;"/>'));				
//list.append(newItem);
if (dtx ==01)	{
$('#januaryadv').text('January');
//$('#jandiv').append($('<h5/>').html("January"));
$('#janlistadv').append(newItem);
$('#jandivadv').show();
}
if (dtx ==02)	{
$('#februaryadv').text('February');
$('#feblistadv').append(newItem);
$('#febdivadv').show();
}
if (dtx ==03)	{
$('#marchadv').text('March');
$('#marchlistadv').append(newItem);
$('#marchdivadv').show();
}
if (dtx ==04)	{
$('#apriladv').text('April');	
$('#aprillistadv').append(newItem);
$('#aprildivadv').show();
}
if (dtx ==05)	{
$('#mayadv').text('May');	
$('#maylistadv').append(newItem);
$('#maydivadv').show();
}
if (dtx ==06)	{
$('#juneadv').text('June');	
$('#junelistadv').append(newItem);
$('#junedivadv').show();
}
if (dtx ==07)	{
$('#julyadv').text('July');	
$('#julylistadv').append(newItem);
$('#julydivadv').show();
}
if (dtx ==08)	{
$('#augustadv').text('August');	
$('#auglistadv').append(newItem);
$('#augdivadv').show();
}
if (dtx ==09)	{
$('#septemberadv').text('September');		
$('#seplistadv').append(newItem);
$('#sepdivadv').show();
}
if (dtx ==10)	{
$('#octoberadv').text('October');		
$('#octlistadv').append(newItem);
$('#octdivadv').show();
}
if (dtx ==11)	{
$('#novemberadv').text('November');		
$('#novlistadv').append(newItem);
$('#novdivadv').show();
}
if (dtx ==12)	{
$('#Decemberadv').text('December');	
$('#declistadv').append(newItem);
$('#decdivadv').show();
}

}
//end if greater than ##
count_items = count_items + 1 ;	
//Statement Loop
if (category =="Media Statement") {
	
var newItem = $('<li />');
var titlex=entry.title;
titlex=titlex.substring(0,(titlex.length)-19);
// If there is an enclosure URL that points to an image then render it.
//var regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;
//        if (regex.test(entry.enclosureurl)) {
//var imgz=$('<img  />').attr('src', entry.enclosureurl)
//       .attr('alt', entry.title);	
//var divx=$('<div class="cdc-caption item-image">').html(imgz)	;
//var aaa = $('<a class="item-title" />').html(divx);
//aaa.attr("href", entry.link);							
//newItem.append(aaa);
//}

var a = $('<a class="item-title" />').html(titlex);
a.attr("href", entry.link);
newItem.append(a);
//newItem.append($('<br/>'));
var d = new Date();
if (isNaN(Date.parse(entry.pubdate))) {
d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4)));
} else {
d.setTime(Date.parse(entry.pubdate));
}
//newItem.append($('<span />').html(category));
var dtz = d.toLocaleString()
dtz=dtz.substring(0,(dtz.length)-11);
dtz=(" - " + dtz);
//newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString().replace(':00 ', ' ')));
newItem.append($('<span class="item-pubdate" />').html(dtz));
newItem.append($('<div style="clear:both;"/>'));				
//list.append(newItem);
if (dtx ==01)	{
$('#januarystate').text('January');
//$('#jandiv').append($('<h5/>').html("January"));
$('#janliststate').append(newItem);
$('#jandivstate').show();
}
if (dtx ==02)	{
$('#februarystate').text('February');
$('#febliststate').append(newItem);
$('#febdivstate').show();
}
if (dtx ==03)	{
$('#marchstate').text('March');
$('#marchliststate').append(newItem);
$('#marchdivstate').show();
}
if (dtx ==04)	{
$('#aprilstate').text('April');	
$('#aprilliststate').append(newItem);
$('#aprildivstate').show();
}
if (dtx ==05)	{
$('#maystate').text('May');	
$('#mayliststate').append(newItem);
$('#maydivstate').show();
}
if (dtx ==06)	{
$('#junestate').text('June');	
$('#juneliststate').append(newItem);
$('#junedivstate').show();
}
if (dtx ==07)	{
$('#julystate').text('July');	
$('#julyliststate').append(newItem);
$('#julydivstate').show();
}
if (dtx ==08)	{
$('#auguststate').text('August');	
$('#augliststate').append(newItem);
$('#augdivstate').show();
}
if (dtx ==09)	{
$('#septemberstate').text('September');		
$('#sepliststate').append(newItem);
$('#sepdivstate').show();
}
if (dtx ==10)	{
$('#octoberstate').text('October');		
$('#octliststate').append(newItem);
$('#octdivstate').show();
}
if (dtx ==11)	{
$('#novemberstate').text('November');		
$('#novliststate').append(newItem);
$('#novdivstate').show();
}
if (dtx ==12)	{
$('#decemberstate').text('December');	
$('#decliststate').append(newItem);
$('#decdivstate').show();
}

}
//end if greater than ##
count_items = count_items + 1 ;	
//Transcript Loop
if (category =="Transcript") {
var newItem = $('<li />');
var titlex=entry.title;
titlex=titlex.substring(0,(titlex.length)-13);
// If there is an enclosure URL that points to an image then render it.
//var regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;
//        if (regex.test(entry.enclosureurl)) {
//var imgz=$('<img  />').attr('src', entry.enclosureurl)
//       .attr('alt', entry.title);	
//var divx=$('<div class="cdc-caption item-image">').html(imgz)	;
//var aaa = $('<a class="item-title" />').html(divx);
//aaa.attr("href", entry.link);							
//newItem.append(aaa);
//}

var a = $('<a class="item-title" />').html(titlex);
var a2 = $('<a />').html("Audio Recording" + "<span class='tp-label'><span class='plugins'>&nbsp;<img title='Audio/Video file' class='plugin' alt='Audio/Video file' src='/TemplatePackage/images/icon_wmv.gif' border='0'/></span></span");
a.attr("href", entry.link);
aud=entry.link;
aud=aud.replace('html', 'mp3')
a2.attr("href", aud);
newItem.append(a);
//newItem.append($('<br/>'));
var d = new Date();
if (isNaN(Date.parse(entry.pubdate))) {
d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4)));
} else {
d.setTime(Date.parse(entry.pubdate));
}
//newItem.append($('<span />').html(category));
var dtz = d.toLocaleString()
dtz=dtz.substring(0,(dtz.length)-11);
dtz=(" - " + dtz);
//newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString().replace(':00 ', ' ')));
newItem.append($('<span class="item-pubdate" />').html(dtz));
var audicon=($('<li />').html(a2));
newItem.append($('<ul/>').html(audicon));
//newItem.append($('<li />').html(a2));
newItem.append($('<div style="clear:both;"/>'));				
//list.append(newItem);
if (dtx ==01)	{
$('#januarytran').text('January');
//$('#jandiv').append($('<h5/>').html("January"));
$('#janlisttran').append(newItem);
$('#jandivtran').show();
}
if (dtx ==02)	{
$('#februarytran').text('February');
$('#feblisttran').append(newItem);
$('#febdivtran').show();
}
if (dtx ==03)	{
$('#marchtran').text('March');
$('#marchlisttran').append(newItem);
$('#marchdivtran').show();
}
if (dtx ==04)	{
$('#apriltran').text('April');	
$('#aprillisttran').append(newItem);
$('#aprildivtran').show();
}
if (dtx ==05)	{
$('#maytran').text('May');	
$('#maylisttran').append(newItem);
$('#maydivtran').show();
}
if (dtx ==06)	{
$('#junetran').text('June');	
$('#junelisttran').append(newItem);
$('#junedivtran').show();
}
if (dtx ==07)	{
$('#julytran').text('July');	
$('#julylisttran').append(newItem);
$('#julydivtran').show();
}
if (dtx ==08)	{
$('#augusttran').text('August');	
$('#augtran').append(newItem);
$('#augdivtran').show();
}
if (dtx ==09)	{
$('#septembertran').text('September');		
$('#seplisttran').append(newItem);
$('#sepdivtran').show();
}
if (dtx ==10)	{
$('#octobertran').text('October');		
$('#octlisttran').append(newItem);
$('#octdivtran').show();
}
if (dtx ==11)	{
$('#novembertran').text('November');		
$('#novlisttran').append(newItem);
$('#novdivtran').show();
}
if (dtx ==12)	{
$('#decembertran').text('December');	
$('#declisttran').append(newItem);
$('#decdivtran').show();
}
}
}
//end if greater than ##
count_items = count_items + 1 ;						
});
});
//--> 




                            
 