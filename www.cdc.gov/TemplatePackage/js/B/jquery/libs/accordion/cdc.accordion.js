$(function(){var expanded="&nbsp;expanded";var collapsed="&nbsp;collapsed";$(".accordion").accordion({disabled:true});$(".accordion .ui-accordion-header").append('<span class="screenReaderOnly ui-accordion-textualIndicator">'+collapsed+"</span>");$(".accordion .ui-accordion-header[aria-expanded='true'] > .ui-accordion-textualIndicator").html(expanded);$(".accordion .ui-accordion-content a").attr("tabindex","0");$(".accordion .ui-accordion-header").attr("tabindex","0");$(".accordion").bind("accordionchangestart",function(e,ui){if(ui.oldHeader){ui.oldHeader.children(".ui-accordion-textualIndicator").html(collapsed);ui.oldHeader.bind("blur.accordion",function(){$(this).attr("tabindex","0")})}else{$(".accordion .ui-accordion-header").attr("tabindex","0");$(".accordion .ui-accordion-header[aria-expanded='false'] > .ui-accordion-textualIndicator").html(collapsed)}if(ui.newHeader){ui.newHeader.children(".ui-accordion-textualIndicator").html(expanded)}});$("body").addClass("cdc-ui-accordion");$(".accordion").accordion({autoHeight:false,navigation:true,header:"h4",animated:"slide",disabled:false,fillSpace:true,collapsible:false})});