<!--//
$.ajaxSetup({ cache: false });
$.getJSON("//tools.cdc.gov/api/v2/resources/media/132567?max=1&fields=children{description,targetUrl,enclosures}&callback=?",

function (data) {
    
    var list = $('<div />');
    $('#rss-philfeed1').append(list);

    // quick and dirty object validation
    if (data.results 
        && data.results[0]
        && data.results[0].children
        && data.results[0].children[0]
        && data.results[0].children[0].enclosures
        && data.results[0].children[0].enclosures.length > 0) {

        var entry = data.results[0].children[0].enclosures[0];


        var imgz = $('<img />').attr('src', entry.resourceUrl)
        .attr('alt', data.results[0].children[0].description);
        var divx = $('<div class="cdc-caption item-image center">').html(imgz);
        var aaa = $('<a  />').html(divx);
        aaa.attr("href", data.results[0].children[0].targetUrl);
        list.append(aaa)

    }

});

//-->  