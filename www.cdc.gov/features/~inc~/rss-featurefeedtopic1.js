<!--//
$.ajaxSetup({ cache: false });
$.getJSON("//www2c.cdc.gov/podcasts/feed.asp?feedid=198&format=json&callback=?",
                function (data) {
                                var count_items = 0
                                var list = $('<ul />');
                                $('#rss-featurefeedtopic1').append(list);
                                $.each(data.entries, function (i, entry) {
												var dtx=entry.pubdate.substr(5, 2)
                                                if (count_items < 1) {
                                                                var newItem = $('<li />');
                                               
// If there is an enclosure URL that points to an image then render it.
                                                var regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;
                                                if (regex.test(entry.enclosureurl)) {
												var imgz=$('<img />').attr('src', entry.enclosureurl)
                                                .attr('alt', entry.title);	
												var divx=$('<div class="cdc-caption item-image">').html(imgz)	;
			var aaa = $('<a  />').html(divx);
			aaa.attr("href", entry.link);							newItem.append(aaa);
																}



  //var aa = $('<div class="item-title" />').html("Read The Latest Feature: " ); 			             //var a = $('<br /><a />').html(entry.title);
                                                             //   a.attr("href", entry.link);
										var aa = $('<div  class="item-title" />').html("" ); 			             
                   var a = $('<a />').html(entry.title);
                                                                a.attr("href", entry.link);	
												aa.append(a);
												newItem.append(aa);
												//newItem.append(a);
				
   
												



                                                                var d = new Date();
                                                                if (isNaN(Date.parse(entry.pubdate))) {
                                                                d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4) + ' ' +
                                                                entry.pubdate.substr(11, 5)));
                                                } else {
                                                                d.setTime(Date.parse(entry.pubdate));
                                                }
                                                newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString().replace(':00 ', ' ')));
                                               newItem.append($('<span class="item-description" />').html(entry.description));
												
                                                var aaaa = $('<a  />').html("Learn more&raquo;");
                                                 aaaa.attr("href", entry.link);
                                                newItem.append($('<p class="more-link"/>').html(aaaa));
												//newItem.append($('<div style="clear:both;"/>'));				
                                                list.append(newItem);
                                                count_items = count_items + 1 ;
                                } //end if greater than ##
								
								
								
								
                });
});
//--> 