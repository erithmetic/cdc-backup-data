<!--//
    $.ajaxSetup({ cache: false });
    $.getJSON("https://www2c.cdc.gov/podcasts/feed.asp?feedid=151&format=json&callback=?", function (data) {
        var maskDiv = $('<div class="mask" />');
        $('#rss-featurefeedhome1').append(maskDiv);
        $.each(data.entries, function (i, entry) {

            //Add title
            maskDiv.append($('<div class="item-title page-curl" />').html(entry.title));

            //Add more link
            var moreLinkWrapper = $('<div class="more-link">');
            var moreLink = $('<a  />').html("Conozca más &raquo;");
            moreLink.attr("href", entry.link);
            moreLinkWrapper.append(moreLink);
            maskDiv.append(moreLinkWrapper);

            //Add image
            var regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;
            if (regex.test(entry.enclosureurl)) {
            var mainImage = $('<img />').attr('src', entry.enclosureurl)
                    .attr('alt', entry.description);
            var mainImageWrapper = $('<div class="cdc-caption item-image">').html(mainImage);
            var mainImageLink = $('<a  />').html(mainImageWrapper);
            mainImageLink.attr("href", entry.link);
            maskDiv.append(mainImageLink);
            }

            //Exit loop
            return false;
        });
    });
		

//--> 