<!--//
$.ajaxSetup({
    cache: false
});
$.getJSON("https://www2c.cdc.gov/podcasts/feed.asp?feedid=530&maxnumber=6&format=json&callback=?", function(data) {
    var count_items = 0
    var list = $('<ul />');
    $('#rss-vitalsigns-latest').append(list);
    $.each(data.entries, function(i, entry) {
        var dtx = entry.pubdate.substr(0, 4); {
            var newItem = $('<li style="float:left" class="span7" />');
            var a = $('<a class="item-title" />').html(entry.title);
            a.attr("href", entry.link);
            newItem.append(a);
            var d = new Date();
            if (isNaN(Date.parse(entry.pubdate))) {
                d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4) + ' ' + entry.pubdate.substr(11, 5)));
            } else {
                d.setTime(Date.parse(entry.pubdate));
            }
            var dayNames = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];
            var monthNames = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
            var displayDate = dayNames[d.getDay()].toUpperCase() + ", " + d.getDate() + " " + "DE" + " " + monthNames[d.getMonth()].toUpperCase() + " " + "DE" + " " + d.getFullYear();
            newItem.append($('<span class="" style="font-size: 0.8em; text-transform: uppercase; color: #666666; display:block" />').html(displayDate)); /*newItem.append($('<span class="item-pubdate" />').html(d.toLocaleString())); newItem.append($('<span class="item-description" />').html(entry.description));*/
            list.append(newItem);
        }
        count_items = count_items + 1
    });
});
//--> 