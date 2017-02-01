			 	<!--//
            $.getJSON("https://www2c.cdc.gov/podcasts/feed.asp?feedid=10&format=json&callback=?",
              function (data) {
                                        var count_items = 0
										var list = $('<ul />');
										var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
                                                $('#rss-whatsnew').append(list);
                                                $.each(data.entries, function (i, entry) {
													
													if (count_items <2) {
                                                            var newItem = $('<li />');
                                                            var a = $('<a class="item-title" />').html(entry.title);
                                                            a.attr("href", entry.link);
                                                            newItem.append(a);
                                                            var d = new Date();
                                                            if (isNaN(Date.parse(entry.pubdate))) {
                                                                        d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4)));
                                                            } else {
                                                                        d.setTime(Date.parse(entry.pubdate));
                                                            }
															newItem.append($('<span class="item-pubdate" style="font-size: 0.8em; text-transform: color: #666666;" />').html(" &mdash; Added " + monthNames[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear()));
                                                            /*newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString()));
                                                            newItem.append($('<span class="item-description" />').html(entry.description));*/
                                                            list.append(newItem);
															count_items = count_items + 1 
													}//end if greater than 3
                });
            });
	//-->
 