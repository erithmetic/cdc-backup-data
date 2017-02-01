<!--
$(document).ready(function()
{ 
	$.ajaxSetup({cache: false});

	TagHoverDefinitions();
});

function RetrieveGlossaryList(TargetDiv)
{
	$.ajax(
	{
		type: "GET",
		url: "glossary.xml",
		dataType: "xml",
		success: function(xml)
		{
			var HTMLCode = "";
			
			$(xml).find("item").each(function(Index)
			{
				//HTMLCode += "<a name=\"" + (Index + 1) + "\">" + (Index + 1) + "</a>\n";
				HTMLCode += "<h5>" + $(this).find("term").text() + "</h5>\n";
				HTMLCode += "<div style=\"padding : 5px 0px 0px 10px;\">\n";
				HTMLCode += $(this).find("definition").text() + "\n";
				HTMLCode += "</div>\n";
			});

			$("#" + TargetDiv).html(HTMLCode);
		},
        error:function (xhr, ajaxOptions, thrownError)
		{
                //alert(xhr.status);
                //alert(thrownError);
        } 
	});
}

function TagHoverDefinitions()
{
	/*
	$.ajax(
	{
		type: "GET",
		url: "glossary.xml",
		dataType: "xml",
		success: function(xml)
		{
			var PageContent = $("#content-main");
			var CloneArray = [];
			var CloneIndex = 0;
			var TempContent = "";
			var TermArray = []
			var LongestLength = 0;
			var TargetIndex = -1;
			var Temp = [];
			var RegEx = "";
			var Match = [];

			PageContent.find("a, img, h1, h2, h3, h4, h5, h6").each(function()
			{
				CloneArray.push($(this).clone());
				
				$(this).replaceWith("<span id=\"CloneItem_" + CloneIndex + "\"></span>");
			
				CloneIndex += 1;
			});

			TempContent = PageContent.html();

			$(xml).find("item").each(function()
			{
				TermArray.push([$(this).find("term").text(), $(this).find("regex").text(), $(this).find("definition").text(), $(this).find("term").text().length]);
			});
			
			for(var I = 0; I < TermArray.length; I++)
			{
				LongestLength = 0;	
				
				for(var J = I; J < TermArray.length; J++) 
				{
					if(TermArray[J][3] >= LongestLength)
					{
						LongestLength = TermArray[J][3];
						TargetIndex = J;
					}
				}
				
				Temp = TermArray[I]
				TermArray[I] = TermArray[TargetIndex]
				TermArray[TargetIndex] = Temp
			}
			
			for(var I = 0; I < TermArray.length; I++)
			{
				//RegEx = new RegExp(TermArray[I][1] + "?", "i");
				RegEx = new RegExp(TermArray[I][1], "i");

				Match = RegEx.exec(TempContent);
				
				if(Match != null)
				{
					TempContent = TempContent.slice(0, Match.index) + "[~" + I + "~" + Match[0] + "~]" + TempContent.slice(Match.index + Match[0].length);
					//alert("[~" + I + "~" + Match[0] + "~]")	
				}
			}

			Match = TempContent.match(/\[~\d{1,3}~.+\]/g);

			if(Match != null)
			{
				for(var I = 0; I < Match.length; I++) 
				{
					var TargetIndex = Match[I].match(/\[~\d{1,3}~?/).toString().replace(/\[|~/g, "");

					//TempContent = TempContent.replace(Match[I], "<span title=\"" + TermArray[TargetIndex][0] + "\n" + TermArray[TargetIndex][2] + "\" class=\"HoverTerm\">" + Match[I].replace(/\[|[~\d{1,2}~]|\]/g, "") + "</span>");
				}
			}
			//alert(TempContent)
			PageContent.html(TempContent);

			for(var I = 0; I < CloneArray.length; I++)
				PageContent.find("#CloneItem_" + I).replaceWith(CloneArray[I]);

			PageContent.find(".HoverTerm").each(function()
			{
				$(this).attr("tabindex", "0");
				$(this).hover(function(){ShowDefinition($(this));},function(){HideDefinition($(this));})
				$(this).focus(function(){ShowDefinition($(this));})
				$(this).blur(function(){HideDefinition($(this));});
			});
		}
	});
	*/
	document.onkeydown = function(e)
	{
    	e = e || window.event;

		if(e.keyCode == 27)
			$("body #HoverDefinition").fadeOut().remove();
	};
	
	function ShowDefinition(Definition)
	{
		var HoverContent = Definition.attr("title");

		HoverContent = "<strong>" + HoverContent.substr(0, HoverContent.indexOf("\n")) + "</strong><br />" + HoverContent.substr(HoverContent.indexOf("\n") + 1, HoverContent.length);
		
		Definition.data("title", Definition.attr("title"));
		Definition.removeAttr("title");
		
		$("body #HoverDefinition").fadeOut().remove();

		$("body").prepend("<div id=\"HoverDefinition\">" + HoverContent + "</div>");
		$("body #HoverDefinition").hide().css({"top" : Definition.offset().top + (Definition.height() + 5), "left" : Definition.offset().left}).fadeIn();
	}
	
	function HideDefinition(Definition)
	{
		$("body #HoverDefinition").fadeOut().remove();
		Definition.prop("title", Definition.data("title"));
	}
}

function ReturnLink(HTTPReferrer)
{
	var Temp = HTTPReferrer.split("/");
	var ReturnLink = "";
	
	if(Temp[Temp.length - 1] == "environmental_chemicals.html")
		ReturnLink = "<a href=\"environmental_chemicals.html\">Environmental Chemicals</a>";
	else if(Temp[Temp.length - 1] == "biomonitoring_summaries.html")
		ReturnLink = "<a href=\"biomonitoring_summaries.html\">Biomonitoring Summaries</a>";
	
	return ReturnLink;
}
-->