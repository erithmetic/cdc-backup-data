<!--//
$.getJSON("http://www2c.cdc.gov/podcasts/feed.asp?feedid=513&format=json&callback=?",
    function (data) {
        var count_items = 0
        var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        var list = $('<ul class="list-bullet"/>');
        $('#rss-outbreaksUS').append(list);
        $.each(data.entries, function (i, entry) {
            if (count_items < 9) {
                var newItem = $('<li />');
                
 //Italicize and append anchor title
                var strtitle = entry.title;
                var parse = strtitle.replace(/(C. difficile|Salmonella)/ig, "<em>$1</em>");
                var newTitle = parse;

               var a = $('<a class="item-title" />').html(entry.title);
                a.attr("href", entry.link);
                newItem.append(a);


//Italicize and append description
                var descplaceholder = entry.description;
                var parse = descplaceholder.replace(/(C. difficile|Salmonella)/ig, "<em>$1</em>");
                var descText = parse;

                var d = new Date();
                if (isNaN(Date.parse(entry.pubdate))) {
                    d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4) + ' ' +
                                                                        entry.pubdate.substr(11, 5)));
                } else {
                    d.setTime(Date.parse(entry.pubdate));
                }
                newItem.append($('<span class="item-pubdate" />').html("Announced " + monthNames[d.getMonth()] + " " + d.getFullYear()));
                /*newItem.append($('<span class="item-description" />').html(entry.description));*/
                list.append(newItem);
                count_items = count_items + 1
            } //end if greater than 9
        });
    });

//-->
 