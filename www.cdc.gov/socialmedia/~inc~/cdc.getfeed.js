/*!
 *	Some CDC legalese
 * 	Feeds: https://www2c.cdc.gov/podcasts/rss.asp
 */

//TODO:
//-	Show/hide pub date
//-	Show/hide description
//-	Date/time format options (e.g., show/hide time, show/hide day-of-week, time format AM/PM/etc.)
//-	Date-based filter criteria that are passed on the querystring to the feed.asp page (e.g., date range, later-than date, before date, etc.)

;(function ( $, window, document, undefined ) {
	
	var pluginName = "getFeed",
		defaults = {
			feedId: 0,
			itemTitle: '<a class="item-title"/>',
			itemPubdate: '<span class="item-pubdate"/>',
			itemDescription: '<span class="item-description"/>',
			maxItems: 4,
			columns: 1,
			listType: "list-bullet",
			cache: false,
			hasImage: false,
			isFeature: false	// overrides other settings, for single feature
		};

	// The actual plugin constructor
	function GetFeed( element, options ) {
		this.element = element;
		this.options = $.extend( {}, defaults, options) ;

		this._defaults = defaults;
		this._name = pluginName;

		this.init();
	}

	GetFeed.prototype = {
		settings: {
			column1: 0,
			column2: 0
		},

		init: function() {
			// just holding onto the original this
			var _this = this;

			this.options.columns > 2 ? 2 : this.options.columns < 1 ? 1 : 1;	// currently 1 or 2 columns only

			this.settings.column1 = this.options.maxItems;

			if(this.options.columns === 2) {
				this.settings.column1 = Math.ceil(this.options.maxItems / this.options.columns);
				this.settings.column2 = this.options.maxItems - this.settings.column1;
			}

			this.output(this.element, this.options, this.settings);
		},

		output: function(el, options, settings) {
			if(options.itemTitle.substr(0,3) === "<a ") {}

			// check that feedId exists and is a number
			if(!options.feedId && (!isNaN (options.feedId-0) && options.feedId !== null && options.feedId !== "" && options.feedId !== false)) {
				// I guess throw an alert with an "invalid" feed id
				alert('Please set a valid Feed ID on Element: ' + $(el).attr("id"));
				return false;
			}

			$.ajaxSetup({ cache: options.cache });
			$.getJSON('https://www2c.cdc.gov/podcasts/feed.asp?feedid=' + options.feedId + '&format=json&callback=?',
				function (data) {
					var count_items = 0,
					list = "",
					newItem = "",
					listContainer = "";
					a = "",
					aa = "",
					d = "",
					regex = /(?:([^:\/?#]+):)?(?:\/\/([^\/?#]*))?([^?#]*\.(?:jpe?g|gif|png|tif?f))(?:\?([^#]*))?(?:#(.*))?/gi;

					// Single feature image
					// ignoring columns, maxItems,  etc...
					if(options.isFeature) {
							list = $('<ul/>');
							$(el).append(list);	// append the list container to the parent container

							$.each(data.entries, function (i, entry) {

								if (count_items < 1) {
									newItem = $('<li/>');

									if (regex.test(entry.enclosureurl)) {
										var imgz=$('<img />').attr('src', entry.enclosureurl).attr('alt', entry.title),
										divx=$('<div class="cdc-caption item-image">').html(imgz),
										aaa = $('<a class="item-title" />').html(divx);
										aaa.attr("href", entry.link);
										newItem.append(aaa);
									}

									a = $(options.itemTitle).html(entry.title);
									a.attr("href", entry.link);
									aa = $('<span class="item-title" />').html("Feature of the Week: " ); 
                                	aa.append(a);
                                	newItem.append(aa);

									// d = new Date();
									// if (isNaN(Date.parse(entry.pubdate))) {
									// 	d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4) + ' ' +
									// 			entry.pubdate.substr(11, 5)));
									// } 
									// else {
									// 	d.setTime(Date.parse(entry.pubdate));
									// }
									// newItem.append($(options.itemPubdate).html(d.toLocaleString()));
									// // newItem.append($(options.itemPubdate).html(d.toLocaleString().replace(':00 ', ' ')));
									// newItem.append($(options.itemDescription).html(entry.description));
									// // newItem.append($('<div style="clear:both;"/>'));
									list.append(newItem);
									count_items += 1;
								}
							});
					}
					else {
						// multi (currently 2) column list
						if(options.columns === 2) { 
							list = $('<ul/>');
							list.addClass(options.listType + " double listCol1");

							listContainer = $('<div class="listContainer"/>');
							$(el).append(listContainer);
							listContainer.append(list);

							$.each(data.entries, function (i, entry) {

								if(count_items === settings.column1) {
									list = $('<ul/>');
									list.addClass(options.listType + " double listCol2 last");
									listContainer.append(list);
								}

								if (count_items < options.maxItems) {
									newItem = $('<li/>');

									if(options.hasImage) {
										if (regex.test(entry.enclosureurl)) {                                                
											var imgz=$('<img />').attr('src', entry.enclosureurl).attr('alt', entry.title),
											divx=$('<div class="cdc-caption item-image">').html(imgz),
											aaa = $('<a class="item-title" />').html(divx);
											aaa.attr("href", entry.link);             
											newItem.append(aaa);
										}										
									}

									a = $(options.itemTitle).html(entry.title);
									a.attr("href", entry.guid);
									newItem.append(a);
									d = new Date();
									if (isNaN(Date.parse(entry.pubdate))) {
										d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4) + ' ' +
												entry.pubdate.substr(11, 5)));
									} 
									else {
										d.setTime(Date.parse(entry.pubdate));
									}
									newItem.append($(options.itemPubdate).html(d.toLocaleString()));
									// newItem.append($(options.itemPubdate).html(d.toLocaleString().replace(':00 ', ' ')));
									newItem.append($(options.itemDescription).html(entry.description));
									// newItem.append($('<div style="clear:both;"/>'));
									list.append(newItem);
									count_items += 1;
								}
							});
						}
						else {
							// original list
							list = $('<ul class="' + options.listType + '" />');
							$(el).append(list);	// append the list container to the parent container

							$.each(data.entries, function (i, entry) {

								if (count_items < options.maxItems) {
									newItem = $('<li/>');

									if(options.hasImage) {
										if (regex.test(entry.enclosureurl)) {                                                
											var imgz=$('<img />').attr('src', entry.enclosureurl).attr('alt', entry.title),
											divx=$('<div class="cdc-caption item-image">').html(imgz),
											aaa = $('<a class="item-title" />').html(divx);
											aaa.attr("href", entry.link);             
											newItem.append(aaa);
										}										
									}

									a = $(options.itemTitle).html(entry.title);
									a.attr("href", entry.guid);
									newItem.append(a);
									d = new Date();
									if (isNaN(Date.parse(entry.pubdate))) {
										d.setTime(Date.parse(entry.pubdate.substr(5, 2) + '/' + entry.pubdate.substr(8, 2) + '/' + entry.pubdate.substr(0, 4) + ' ' +
												entry.pubdate.substr(11, 5)));
									} 
									else {
										d.setTime(Date.parse(entry.pubdate));
									}
									newItem.append($(options.itemPubdate).html(d.toLocaleString()));
									// newItem.append($(options.itemPubdate).html(d.toLocaleString().replace(':00 ', ' ')));
									newItem.append($(options.itemDescription).html(entry.description));
									// newItem.append($('<div style="clear:both;"/>'));
									list.append(newItem);
									count_items += 1;
								}
							});
						}
					}
				});	
		}
	};

	// prevent multiple instantiations
	$.fn.getFeed = function ( options ) {
		return this.each(function () {
			if (!$.data(this, "plugin_" + pluginName)) {
				$.data(this, "plugin_" + pluginName,
				new GetFeed( this, options ));
			}
		});
	};

})( jQuery, window, document );
 