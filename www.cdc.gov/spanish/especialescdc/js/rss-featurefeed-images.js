<!--//
$.ajaxSetup({
    cache: false
});
$.getJSON("https://www2c.cdc.gov/podcasts/feed.asp?feedid=151&format=json&callback=?",
    function (data) {
        var count_items = 0;
        var list = $('<ul />');
        var monthNames = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
        var DayNames = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];
        $('#rss-featurefeed-images').append(list);
        $.each(data.entries, function (i, entry) {
            var dtx = entry.pubdate.substr(5, 2);
            if (count_items > 0 && count_items <= 6) {
                var newItem = $('<li  class="span7" />');

                // If there is an enclosure URL that points to an image then render it.
                var regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;
                if (regex.test(entry.enclosureurl)) {

                    var imgz = $('<img  />').attr('src', entry.enclosureurl).attr('alt', entry.title);
                    var divx = $('<div class="cdc-caption item-image">').html(imgz);
                    var aaa = $('<a class="item-title" />').html(divx);
                    aaa.attr("href", entry.link);
                    newItem.append(aaa);
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
                // newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString().replace(':00 ', ' ')));
                newItem.append($('<span class="item-pubdate" />').html(DayNames[d.getDay()] + " " + d.getDate() + " " + "de"  + " " + monthNames[d.getMonth()]+ " "  + "de " + " " + d.getFullYear()));
		//newItem.append($('<span class="item-pubdate" />').html(DayNames[d.getDay()] + ", " + monthNames[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear()));
                newItem.append($('<div style="clear:both;"/>'));
                list.append(newItem);
                // count_items = count_items + 1 ;
            } //end if greater than ##

            count_items = count_items + 1;


        });
    });
//-->// JavaScript Document 