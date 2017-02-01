<!--//
$.ajaxSetup({ cache: false });
$.getJSON("https://www2c.cdc.gov/podcasts/feed.asp?feedid=198&maxnumber=0&pagesize=9999&daterange=2&startdate=1/1/16&enddate=12/31/16&format=json&callback=?",
                function (data) {
                                var count_items = 0;
                                var list = $('<ul />');
                                 $('#rss-featurefeed-images-healthyliving2016').append(list);
                                $.each(data.entries, function (i, entry) {
                                    var category = (entry.categories && entry.categories.length > 0) ? entry.categories[0] : '';
		var dtx=entry.pubdate.substr(0, 4);
                                               if (category =="Healthy Living") {
		                                     
                                                                var newItem = $('<li style="float:left" class="span8" />');

// If there is an enclosure URL that points to an image then render it.
                                               var regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;
                                                                if (regex.test(entry.enclosureurl)) {
												var imgz=$('<img  />').attr('src', entry.enclosureurl)
                                                       .attr('alt', entry.title);	
												var divx=$('<div class="cdc-caption item-image">').html(imgz)	;
												var aaa = $('<a class="item-title" />').html(divx);
												aaa.attr("href", entry.link);							newItem.append(aaa);
				}
			var a = $('<a class="item-title" />').html(entry.title);
                                                      a.attr("href", entry.link);
                                                      newItem.append(a);
		
                                                      var d = new Date();
                                                      if (isNaN(Date.parse(entry.pubdate))) {
                                                                d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4) + ' ' +
                                                                entry.pubdate.substr(11, 5)));
                                                } else {
                                                                d.setTime(Date.parse(entry.pubdate));
                                                }
                                                newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString().replace(':00 ', ' ')));
												newItem.append($('<div style="clear:both;"/>'));				
                                                list.append(newItem);
                                            
                                } //end if greater than ##
								
		  count_items = count_items + 1 ;						
								
								
                });
});
//--> 