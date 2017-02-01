<!--//
$.ajaxSetup({ cache: false }); 
$.getJSON("https://www2c.cdc.gov/podcasts/feed.asp?feedid=528&maxnumber=6&format=json&callback=?", 
	function (data) {
		var count_items = 0
		var list = $('<ul />');
			$('#rss-vitalsigns-latest').append(list);
			$.each(data.entries, function (i, entry) {

				var dtx=entry.pubdate.substr(0, 4); {
					var newItem = $('<li class="item" />');
					var a = $('<a class="item-title" />').html(entry.title);
						a.attr("href", entry.link);
						newItem.append(a);
						var d = new Date();
						if (isNaN(Date.parse(entry.pubdate))) {
						d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + 							
                        entry.pubdate.substr(0, 4) + ' ' +
                        entry.pubdate.substr(11, 5)));
                        } else {
							d.setTime(Date.parse(entry.pubdate)); }

				var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
				var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
				var displayDate = dayNames[d.getDay()].toUpperCase() + ", " + monthNames[d.getMonth()].toUpperCase() + " " + d.getDate() + ", " + d.getFullYear();

				newItem.append($('<span class="" style="font-size: 0.8em; text-transform: uppercase; color: #666666; display:block" />').html(displayDate));
				/*newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString()));
				newItem.append($('<span class="item-description" />').html(entry.description));*/
				list.append(newItem);
				}count_items = count_items + 1 
});
});
//--> 