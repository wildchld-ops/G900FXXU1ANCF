var noUrlParams;
var windowpathname;
var protocol;
var host;
var fullurl;
var navUserAgent = navigator.userAgent;
var readability = {
}
    parsedPages= {}; 
    pageETags = {}; 

function findBaseUrl() {
        var noUrlParams     = windowpathname.split("?")[0],
            urlSlashes      = noUrlParams.split("/").reverse(),
            cleanedSegments = [],
            possibleType    = "";

        for (var i = 0, slashLen = urlSlashes.length; i < slashLen; i+=1) {
            var segment = urlSlashes[i];

            if (segment.indexOf(".") !== -1) {
                possibleType = segment.split(".")[1];

                if(!possibleType.match(/[^a-zA-Z]/)) {
                    segment = segment.split(".")[0];                    
                }
            }
            
            if(segment.indexOf(',00') !== -1) {
                segment = segment.replace(',00', '');
            }

            if (segment.match(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i) && ((i === 1) || (i === 0))) {
                segment = segment.replace(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i, "");
            }


            var del = false;

            if (i < 2 && segment.match(/^\d{1,2}$/)) {
                del = true;
            }
            
            if(i === 0 && segment.toLowerCase() === "index") {
                del = true;
            }

            if(i < 2 && segment.length < 3 && !urlSlashes[0].match(/[a-z]/i)) {
                del = true;
            }

            if (!del) {
                cleanedSegments.push(segment);
            }
        }

        return protocol + "//" + host +  cleanedSegments.reverse().join("/");
    }


function findNextPageLink(elem) {
	    
        var possiblePages = {},
            allLinks = elem.getElementsByTagName('a'),
            articleBaseUrl = findBaseUrl();
        
        for(var i = 0, il = allLinks.length; i < il; i+=1) {
            var link     = allLinks[i],
                linkHref = allLinks[i].href.replace(/#.*$/, '').replace(/\/$/, '');

            if(linkHref === "" || linkHref === articleBaseUrl || linkHref === window.location.href || linkHref in parsedPages) {
                continue;
            }
            
            if(window.location.host !== linkHref.split(/\/+/g)[1]) {
                continue;
            }
            
            var linkText = getInnerText(link);

            if(linkText.match(regexps.extraneous) || linkText.length > 25) {
                continue;
            }

            var linkHrefLeftover = linkHref.replace(articleBaseUrl, '');
            if(!linkHrefLeftover.match(/\d/)) {
                continue;
            }
            
            if(!(linkHref in possiblePages)) {
                possiblePages[linkHref] = {"score": 0, "linkText": linkText, "href": linkHref};             
            } else {
                possiblePages[linkHref].linkText += ' | ' + linkText;
            }

            var linkObj = possiblePages[linkHref];

            if(linkHref.indexOf(articleBaseUrl) !== 0) {
                linkObj.score -= 25;
            }

            var linkData = linkText + ' ' + link.className + ' ' + link.id + link.innerHTML;
            if(linkData.match(regexps.nextLink)) {
                linkObj.score += 50;
            }
            if(linkData.match(/pag(e|ing|inat)/i)) {
                linkObj.score += 25;
            }
            if(linkData.match(/(first|last)/i)) { 
                if(!linkObj.linkText.match(regexps.nextLink)) {
                    linkObj.score -= 65;
                }
            }
            if(linkData.match(regexps.negative) || linkData.match(regexps.extraneous)) {
                linkObj.score -= 50;
            }
            if(linkData.match(regexps.prevLink)) {
                linkObj.score -= 200;
            }

            var parentNode = link.parentNode,
                positiveNodeMatch = false,
                negativeNodeMatch = false;
            while(parentNode) {
                var parentNodeClassAndId = parentNode.className + ' ' + parentNode.id;
                if(!positiveNodeMatch && parentNodeClassAndId && parentNodeClassAndId.match(/pag(e|ing|inat)/i)) {
                    positiveNodeMatch = true;
                    linkObj.score += 15;
                }
                if(!negativeNodeMatch && parentNodeClassAndId && parentNodeClassAndId.match(regexps.negative)) {
                    if(!parentNodeClassAndId.match(regexps.positive)) {
                        linkObj.score -= 25;
                        negativeNodeMatch = true;                       
                    }
                }
                
                parentNode = parentNode.parentNode;
            }

            if (linkHref.match(/p(a|g|ag)?(e|ing|ination)?(=|\/)[0-9]{1,2}/i) || linkHref.match(/(page|paging)/i)) {
                linkObj.score += 25;
            }

            if (linkHref.match(regexps.extraneous)) {
                linkObj.score -= 15;
            }

            var linkTextAsNumber = parseInt(linkText, 10);
            if(linkTextAsNumber) {
                if (linkTextAsNumber === 1) {
                    linkObj.score -= 10;
                }
                else {
                    linkObj.score += Math.max(0, 10 - linkTextAsNumber);
                }
            }
        }

        var topPage = null;
        for(var page in possiblePages) {
            if(possiblePages.hasOwnProperty(page)) {
                if(possiblePages[page].score  > 100 && (!topPage || topPage.score < possiblePages[page].score)) {
                    topPage = possiblePages[page];
                }
            }
        }

        if(topPage) {
            var nextHref = topPage.href.replace(/\/$/,'');

            parsedPages[nextHref] = true;
            return nextHref; 
            console.log("Reader :: MyScript :: INFO - Next Link = " + nextHref);           
        }
        else {
            return null;
            console.log("Reader :: MyScript :: INFO - Next Link = null ");       
        }
    }

   function xhr() {
        if (typeof XMLHttpRequest !== 'undefined' && (protocol !== 'file:' || !window.ActiveXObject)) {
            return new XMLHttpRequest();
        }
        else {
            try { return new ActiveXObject('Msxml2.XMLHTTP.6.0'); } catch(sixerr) { }
            try { return new ActiveXObject('Msxml2.XMLHTTP.3.0'); } catch(threrr) { }
            try { return new ActiveXObject('Msxml2.XMLHTTP'); } catch(err) { }
        }

        return false;
    }

    function successfulRequest(request) {
        return (request.status >= 200 && request.status < 300) || request.status === 304 || (request.status === 0 && request.responseText);
    }

    function ajax(url, options) {
        var request = xhr();

        function respondToReadyState(readyState) {
            if (request.readyState === 4) {
                if (successfulRequest(request)) {
                    if (options.success) { options.success(request); }
                }
                else {
                    if (options.error) { options.error(request); }
                }
            }
        }

        if (typeof options === 'undefined') { options = {}; }

        request.onreadystatechange = respondToReadyState;
        
        request.open('get', url, true);
        request.setRequestHeader('Accept', 'text/html');

        try {
            request.send(options.postBody);
        }
        catch (e) {
            if (options.error) { options.error(); }
        }

        return request;
    }

    curPageNum = 1;
    maxPages =  30;
    totalPageNum = 1;
 function appendNextPage(nextPageLink) {
 
	var index_value = nextPageLink.indexOf(",");
	  if(index_value!=-1) {
		  
		  windowpathname = nextPageLink.substring(index_value+1,nextPageLink.length);
		 
		  nextPageLink = nextPageLink.substring(0,index_value);
		  parsedPages[nextPageLink] = true;
		  var protocol_value = windowpathname.indexOf(":");
		  protocol = windowpathname.substring(0,protocol_value+1);
		  windowpathname = windowpathname.substring(protocol_value+1,nextPageLink.length);
		  var host_value = windowpathname.indexOf("/");
		  host = windowpathname.substring(0,host_value);
		  windowpathname = windowpathname.substring(host_value,nextPageLink.length);
		  fullurl=protocol + "//" + host + windowpathname;
	  }
	  else{
		     
			 var protocol_value =nextPageLink.indexOf("//");
			 protocol= nextPageLink.substring(0,protocol_value);
			 var  host_value = nextPageLink.lastIndexOf("/");
			 host = nextPageLink.substring(protocol_value+2,host_value);
			 windowpathname= nextPageLink.substring(host_value, nextPageLink.length);
			 fullurl=protocol + "//" + host + windowpathname;
		  
	  }
	  

     
	curPageNum+=1;
	totalPageNum+=1;

        var articlePage       = document.createElement("DIV");
        articlePage.id        = 'readability-page-' + curPageNum;
        articlePage.className = 'SISO_page';
        articlePage.innerHTML = '<div class="SISO_page-separator"><span class="SISO_page-num" title="Page ' + curPageNum + '">Page '+curPageNum+' of </span><span id="page" class="SISO_page-total">'+totalPageNum+'</span></div>';


        if(curPageNum > maxPages) {
  
            var nextPageMarkup = "<div style='text-align: center'><a href='" + allPageLink + "'>View Next Page</a></div>";
        	articlePage.innerHTML = articlePage.innerHTML + nextPageMarkup;
            return;
        }
        
        (function(pageUrl, thisPage) {
            ajax(pageUrl, {
                success: function(r) {

                    var eTag = r.getResponseHeader('ETag');
                    if(eTag) {
                        if(eTag in pageETags) {
                            dbg("Exact duplicate page found via ETag. Aborting.");
                            articlePage.style.display = 'none';
                            return;
                        } else {
                            pageETags[eTag] = 1;
                        }                       
                    }

                    var page = document.createElement("DIV");

                    var responseHtml = r.responseText.replace(/\n/g,'\uffff').replace(/<script.*?>.*?<\/script>/gi, '');
                    responseHtml = responseHtml.replace(/\n/g,'\uffff').replace(/<script.*?>.*?<\/script>/gi, '');
                    responseHtml = responseHtml.replace(/\uffff/g,'\n').replace(/<(\/?)noscript/gi, '<$1div');
                    responseHtml = responseHtml.replace(regexps.replaceBrs, '</p><p>');
                    responseHtml = responseHtml.replace(regexps.replaceFonts, '<$1span>');
                    
                    page.innerHTML = responseHtml;

                    flags = 0x1 | 0x2 | 0x4;

                   nextPageLink = findNextPageLink(page),
                        content       =  grabArticle(page);
		   	var pageNumUpdate = document.getElementsByClassName("SISO_page-total");
		   	for(var p=0;p<pageNumUpdate.length;p+=1){
				pageNumUpdate[p].innerHTML = totalPageNum;
			}

                    if(!content) {
                        return;
                    }
                     
                    thisPage.innerHTML += content;
			        document.getElementById("reader_content_div").appendChild(thisPage);
			        adjustWidth(thisPage);

                    if(nextPageLink) {
                    	appendNextPage(nextPageLink);
                    }
					
                }
            });
        }(nextPageLink, articlePage));
    }
 

    regexps = {
        unlikelyCandidates:    /combx|comment|community|disqus|extra|foot|header|menu|remark|rss|shoutbox|sidebar|sponsor|ad-break|agegate|pagination|pager|popup|tweet|twitter|disqus_post_title|disqus_post_message/i,
        okMaybeItsACandidate:  /and|article|body|column|main|shadow/i,
        positive:              /article|body|content|entry|hentry|main|page|pagination|post|text|blog|story/i,
        negative:              /combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|shoutbox|sidebar|sponsor|shopping|tags|script|tool|widget|scbox|reply|div_dispalyslide|galleryad|cnn_strylftcntnt|related-entries|disqus_thread|topRightNarrow|fs-stylelist-thumbnails|replText|ttalk_layer|cnn_strycntntrgt|wpadvert|sharedaddy sd-like-enabled sd-sharing-enabled|fs-slideshow-wrapper|reply_box|contentHeader|jive-paginator lw-label|disqus_thread|disqus_post_message|disqus_post_title/i,
        extraneous:            /print|archive|comment|discuss|e[\-]?mail|share|reply|all|login|sign|single/i,
        divToPElements:        /<(a|blockquote|dl|div|img|ol|p|pre|table|ul)/i,
        replaceBrs:            /(<br[^>]*>[ \n\r\t]*){2,}/gi,
        replaceFonts:          /<(\/?)font[^>]*>/gi,
        trim:                  /^\s+|\s+$/g,
        normalize:             /\s{2,}/g,
        killBreaks:            /(<br\s*\/?>(\s|&nbsp;?)*){1,}/g,
        videos:                /http:\/\/(www\.)?(youtube|vimeo)\.com/i,
        images:		       /(file:\/\/\/android_asset\/video_play.png|http:\/\/i2.ytimg.com\/vi\/)/i,
        skipFootnoteLink:      /^\s*(\[?[a-z0-9]{1,2}\]?|^|edit|citation needed)\s*$/i,
        nextLink:              /(next|right|weiter|continue|>([^\|]|$)|\u00BB([^\|]|$))/i, 
        prevLink:              /(prev|earl|old|<|«)/i,
        retainDiv:		/whois_record/i,
	agentName:		/mobile/i
    }

    function cleanHeaders(e) {
        for (var headerIndex = 1; headerIndex < 3; headerIndex+=1) {
            var headers = e.getElementsByTagName('h' + headerIndex);
            for (var i=headers.length-1; i >=0; i-=1) {
                if (getClassWeight(headers[i]) < 0 || getLinkDensity(headers[i]) > 0.33) {
                    headers[i].parentNode.removeChild(headers[i]);
                }
            }
        }
    }	
    
    function clean(e, tag) {
        var targetList = e.getElementsByTagName( tag );
        var isEmbed    = (tag === 'object' || tag === 'embed');
        
        
        
        
        for (var y=targetList.length-1; y >= 0; y-=1) {
            if(isEmbed) {
                var attributeValues = "";
                for (var i=0, il=targetList[y].attributes.length; i < il; i+=1) {
                    attributeValues += targetList[y].attributes[i].value + '|';
                }
                
                if (attributeValues.search(regexps.videos) !== -1) {
                    continue;
                }

                if (targetList[y].innerHTML.search(regexps.videos) !== -1) {
                    continue;
                }
                
            }

            targetList[y].parentNode.removeChild(targetList[y]);
        }
    }	
    function cleanHTML5(e, tag) {
        var targetList = e.getElementsByTagName( tag );
        for (var y=targetList.length-1; y >= 0; y-=1) {
         
            targetList[y].parentNode.removeChild(targetList[y]);
        }
    }	
    function cleanSelect(e, tag) {
        var targetList = e.getElementsByTagName( tag );
        for (var y=targetList.length-1; y >= 0; y-=1) {
         
            targetList[y].style.display = 'none';
        }
    }	
    function getCharCount(e,s) {
        s = s || ",";
        return getInnerText(e).split(s).length-1;
    }	
    function getClassWeight(e) {
        var weight = 0;


        if (typeof(e.className) === 'string' && e.className !== '')
        {
            if(e.className.search(regexps.negative) !== -1) {
                weight -= 25; }

            if(e.className.search(regexps.positive) !== -1) {
                weight += 25; }
        }

        if (typeof(e.id) === 'string' && e.id !== '')
        {
            if(e.id.search(regexps.negative) !== -1) {
                weight -= 25; }

            if(e.id.search(regexps.positive) !== -1) {
                weight += 25; }
        }

        return weight;
    }	
    function cleanConditionally(e, tag) {


        var tagsList      = e.getElementsByTagName(tag);
        var curTagsLength = tagsList.length;

        for (var i=curTagsLength-1; i >= 0; i-=1) {
            var weight = getClassWeight(tagsList[i]);
            var contentScore = (typeof tagsList[i].readability !== 'undefined') ? tagsList[i].readability.contentScore : 0;
            
            if(weight+contentScore < 0)
            {
                tagsList[i].parentNode.removeChild(tagsList[i]);
            }
            else if ( getCharCount(tagsList[i],',') < 10) {
                var p      = tagsList[i].getElementsByTagName("p").length;
                var img    = tagsList[i].getElementsByTagName("img").length;
                var li     = tagsList[i].getElementsByTagName("li").length-100;
                var input  = tagsList[i].getElementsByTagName("input").length;

                var embedCount = 0;
                var embeds     = tagsList[i].getElementsByTagName("embed");
                for(var ei=0,il=embeds.length; ei < il; ei+=1) {
                    if (embeds[ei].src.search(regexps.videos) === -1) {
                      embedCount+=1; 
                    }
                }
				
                var linkDensity   = getLinkDensity(tagsList[i]);
                var contentLength = getInnerText(tagsList[i]).length;
                var toRemove      = false;

                if ( img > p ) {
                   toRemove = true;
                } else if(li > p && tag !== "ul" && tag !== "ol") {
                    toRemove = true;
                } else if( input > Math.floor(p/3) ) {
                    toRemove = true; 
                } else if(contentLength < 25 && (img === 0 || img > 2) ) {
                    toRemove = true;
                } else if(weight < 25 && linkDensity > 0.2) {
                    toRemove = true;
                } else if(weight >= 25 && linkDensity > 0.5) {
                    toRemove = true;
                } else if((embedCount === 1 && contentLength < 75) || embedCount > 1) {
                    toRemove = true;
                }

                var images     = tagsList[i].getElementsByTagName("img");
                for(var im=0,il=images.length; im < il; im+=1) {
                    if ((images[im].height >= 150) && (images[im].width >= 200)) {
			toRemove = false;
			break;
                    }
                }
		if(tag === "div") {
			var readerDivClass = document.getElementsByClassName("PB15 storyText storyTextTable");
			if(readerDivClass.length > 0) {
				toRemove = false;	
			}
			
			
		}	
			

                if(toRemove) {
                    tagsList[i].parentNode.removeChild(tagsList[i]);
                }
            }
        }
    }	
    function killBreaks(e) {
        try {
            e.innerHTML = e.innerHTML.replace(regexps.killBreaks,'<br />');       
        }
        catch (eBreaks) {
        }
    }	
    function cleanStyles(e) {
        e = e || document;
        var cur = e.firstChild;

        if(!e) {
            return; }

        if(typeof e.removeAttribute === 'function' && e.className !== 'readability-styled') {
            e.removeAttribute('style'); }

        while ( cur !== null ) {
            if ( cur.nodeType === 1 ) {
                if(cur.className !== "readability-styled") {
                    cur.removeAttribute("style");                   
                }
                cleanStyles( cur );
            }
            cur = cur.nextSibling;
        }           
    }	
function cleanLinkHrefs(e) {
	var links = e.getElementsByTagName("a");
        for(var i=0, il=links.length; i<il;i+=1)
        {
        links[i].removeAttribute("target");
	   //links[i].removeAttribute("href"); 
        }       
}

    function prepArticle(articleContent) {
        cleanStyles(articleContent);
        cleanConditionally(articleContent, "form");
        clean(articleContent, "object");
	cleanHTML5(articleContent, "video");
	cleanSelect(articleContent, "select");	
        if(articleContent.getElementsByTagName('h2').length === 1) {
            clean(articleContent, "h2");
        }
        clean(articleContent, "iframe");
        clean(articleContent, "script");
        clean(articleContent, "style");
        clean(articleContent, "textarea");
        clean(articleContent, "input");
        clean(articleContent, "\n");
        clean(articleContent, "noscript");
	cleanLinkHrefs(articleContent);
        cleanHeaders(articleContent);
        cleanConditionally(articleContent, "table");
        cleanConditionally(articleContent, "ul");
	cleanConditionally(articleContent, "div");
		
        var articleParagraphs = articleContent.getElementsByTagName('p');
        for(var i = articleParagraphs.length-1; i >= 0; i-=1) {
            var imgCount    = articleParagraphs[i].getElementsByTagName('img').length;
            var embedCount  = articleParagraphs[i].getElementsByTagName('embed').length;
            var objectCount = articleParagraphs[i].getElementsByTagName('object').length;
            
            if(imgCount === 0 && embedCount === 0 && objectCount === 0 && getInnerText(articleParagraphs[i], false) === '') {
                articleParagraphs[i].parentNode.removeChild(articleParagraphs[i]);
            }
        }

        try {
            articleContent.innerHTML = articleContent.innerHTML.replace(/<br[^>]*>\s*<p/gi, '<p');      
        }
        catch (e) {
        }
		
    }
function adjustImageSizeForExtractPage(content){
var all_images = content.getElementsByTagName("img");
	for(var im=0,il=all_images.length; im < il; im+=1) {
		var img = all_images[im];
		var image_width = img.width;
		var image_height = img.height;
		var ratio = img.height / img.width;
		

		if(navUserAgent.search(regexps.agentName) !== -1){
			var max_width = 250;
			var max_height = 250;
		}
		else if(navUserAgent.search(regexps.agentName) === -1){
			var max_width = 500;
			var max_height = 500;
		}
		
		var image_src = img.src;
		if (image_src.search(regexps.images) === -1) {
			if(image_width >= max_width && ratio <= 1){
				image_width = max_width;
		   		image_height = image_width * ratio;
			
			}
			else if(image_height >= max_height){
				image_height = max_height;
		   		image_width = image_height / ratio;
				
			}

			var page_width = window.innerWidth;
			var page_height = window.innerHeight;

			var extractHeader = content.getElementsByClassName("SISO_EXTRACT_HEADER");
			

			var space = page_width - image_width;
			var page_margin_left = space/2;
			page_margin_left -= 10;	// substracting 10 from page_margin_left as siso_page div is having 10 px margin already.
			
			//as window.orientation was giving 0 in both landscape & portait mode.Hence, we are relying on 
			//height, width to decide orientation.
			
			var isLandscape = false;
			if(page_height < page_width)
				isLandscape = true;			if((img.naturalWidth >= page_width) ||(isLandscape && (img.naturalWidth >= page_height))){
				all_images[im].style.width='100%';
				image_height = all_images[im].height;
				image_width = '100%';
			}
			else{
				all_images[im].style.width=image_width+'px';
				all_images[im].style.height=image_height+'px';
			}
//			all_images[im].style.marginLeft= page_margin_left +"px";
			all_images[im].style.marginTop="1px";
			all_images[im].style.marginBottom="1px";
			all_images[im].align="center";
			all_images[im].style.marginLeft= "auto";
			all_images[im].style.marginRight= "auto";
			all_images[im].style.display= "block";

			extractHeader[0].style.top = image_height - 84 +'px';
			
    		}
    	}	
}

function adjustImageSizeForFirstPage(content) {		var all_images = content.getElementsByTagName("img");
	for(var im=0,il=all_images.length; im < il; im+=1) {
		var img = all_images[im];
		var image_width = img.width;
		var image_height = img.height;
		var ratio = img.height / img.width;
		

		if(navUserAgent.search(regexps.agentName) !== -1){
			var max_width = 250;
			var max_height = 250;
		}
		else if(navUserAgent.search(regexps.agentName) === -1){
			var max_width = 500;
			var max_height = 500;
		}
		
		var image_src = img.src;
		if (image_src.search(regexps.images) === -1) {
			if(image_width >= max_width && ratio <= 1){
				image_width = max_width;
		   		image_height = image_width * ratio;
			}
			else if(image_height >= max_height){
				image_height = max_height;
		   		image_width = image_height / ratio;
			}
			// we were not getting correct values in viewport mobile pages with window.innerWidth, hence relying on screen.availWidth.
			var page_width = screen.availWidth;			var page_height = screen.availHeight;
			var space = page_width - image_width;
			var page_margin_left = space/2;
			page_margin_left -= 10;	// substracting 10 from page_margin_left as siso_page div is having 10 px margin already.						//as window.orientation was giving 0 in both landscape & portait mode.Hence, we are relying on 			//height, width to decide orientation.						var isLandscape = false;			if(page_height < page_width)				isLandscape = true;							if((img.naturalWidth >= page_width) ||(isLandscape && (img.naturalWidth >= page_height))){				all_images[im].style.width='100%';				all_images[im].style.height = 'auto';				if(all_images[im].removeAttribute("height")){	// we have to remove height attribute, as in some pages height was set in content.					all_images[im].removeAttribute("height");				}			}			else{
				if(location.origin != "http://edition.cnn.com"){					all_images[im].style.width=image_width+'px';					all_images[im].style.height=image_height+'px';				}			}
//			all_images[im].style.marginLeft= page_margin_left +"px";
			all_images[im].style.marginTop="1px";
			all_images[im].style.marginBottom="1px";
			all_images[im].align="center";
			all_images[im].style.marginLeft= "auto";
			all_images[im].style.marginRight= "auto";
			all_images[im].style.display= "block";
    		}
    	}	
}   	       

function adjustImageSize(content) {
    	var all_images = content.getElementsByTagName("img");
    	for(var im=0,il=all_images.length; im < il; im+=1) {
    	    all_images[im].onload = onloadAdjustImage;
    	}
    	
    }
function onloadAdjustImage(e) {
	var img = this;
	var image_width = img.width;
	var image_height = img.height;
	var ratio = img.height / img.width;

if(navUserAgent.search(regexps.agentName) !== -1){
			var max_width = 250;
			var max_height = 250;
		}
		else if(navUserAgent.search(regexps.agentName) === -1){
			var max_width = 500;
			var max_height = 500;
		}
	
	var image_src = img.src;
		if (image_src.search(regexps.images) === -1) {
			if(image_width >= max_width && ratio <= 1){
		   		image_width = max_width;
		   		image_height = image_width * ratio;
			}
			else if(image_height >= max_height){
			   	image_height = max_height;
			   	image_width = image_height / ratio;
			}						var page_width = window.innerWidth;			var page_height = window.innerHeight;							//As window.orientation was giving 0 in both landscape & portait mode.Hence, we are relying on 			//height, width to decide orientation.						var isLandscape = false;			if(page_height < page_width)				isLandscape = true;						// naturalWidth should give actual image file dimensions.We can't rely on image.width as			// this value can be effected by website custom styles.						if((this.naturalWidth >= page_width) && (isLandscape && (this.naturalWidth >= page_height))){				this.style.width='100%';			}			else{				this.style.width=image_width+'px';				this.style.height=image_height+'px';	
			}
			this.style.marginLeft="10px";
			this.style.marginTop="1px";
		        this.style.marginBottom="1px";
		}
}

	     function fixImageFloats(articleContent) {
	        var imageWidthThreshold = Math.min(articleContent.offsetWidth, 800) * 0.55,
	            images              = articleContent.getElementsByTagName('img');

	        for(var i=0, il = images.length; i < il; i+=1) {
	            var image = images[i];
	            
	            if(image.offsetWidth > imageWidthThreshold) {
	                image.className += " blockImage";
	            }
	        }
	    }



function adjustTableSize(content) {
	var all_tables = content.getElementsByTagName("table");
	for(var i =0; i < all_tables.length;i+=1) {
		var tdCount = all_tables[i].getElementsByTagName("td").length;
		if(tdCount > 2){
			all_tables[i].outerHTML = "<div style='width:100%;overflow-x:scroll;'>"+all_tables[i].outerHTML+"</div>";
		}else{
			all_tables[i].style.width = "100%";
		}
	}
}
function adjustTableSizeImage(content) {

	var all_tables = content.getElementsByTagName("table");
	for(var i =0; i < all_tables.length;i+=1) {
		all_tables[i].id = "table_image_div_"+i;
		var all_tds = all_tables[i].getElementsByTagName("td");
		for(var itd =0; itd < all_tds.length;itd+=1) {
			var imageInTable = all_tds[itd].getElementsByTagName("img");
			if(imageInTable.length > 0) {	
				for(var im =0; im < imageInTable.length;im+=1) {
					var originalWidth = imageInTable[im].width;
					var imageDiv = document.createElement("DIV");
					if(originalWidth > window.innerWidth)
					{
						imageInTable[im].style.display = 'none';
						var image_table_width = window.innerWidth-20;
						imageDiv.innerHTML = "<img src="+imageInTable[im].src+" style='width:"+image_table_width+"px;'>";
						document.getElementById("table_image_div_"+i).appendChild(imageDiv);
					}
					
				}
			}
			
		}	
		
	}
}

function adjustVideoSize(articleContent) {
	var all_videos = articleContent.getElementsByTagName("object");
	var video_link, video_id ,video_embed;
	
if(navUserAgent.search(regexps.agentName) !== -1){

			var video_width = 250;
			var video_height = 200;
			var video_image = 'video_play_250px.png';
		}
		else if(navUserAgent.search(regexps.agentName) === -1){
			var video_width = 500;
			var video_height = 400;
			var video_image = 'video_play_500px.png';
		}
	
	for(var i =0; i < all_videos.length;i+=1) {
		video_embed = all_videos[i].getElementsByTagName("embed")[0];
		video_link = all_videos[i].getElementsByTagName("embed")[0].src;
                if (video_link.search(regexps.videos) !== -1) {
			video_id = video_link.split("/v/")[1].split("?")[0];
			all_videos[i].id = "video_"+video_id;
			video_embed.style.display = 'none';
			var videoDiv = document.createElement("DIV");
			videoDiv.innerHTML = "<center><span><span><img width="+video_width+" height="+video_height+" src='http://i2.ytimg.com/vi/"+video_id+"/default.jpg'></span><a style='position:relative;' href='http://www.youtube.com/watch?v="+video_id+"'><img width='100%' src='file:///android_asset/"+video_image+"' style='position:absolute;right:1px;border-style:none;'></a></span></center>";
			document.getElementById("video_"+video_id).appendChild(videoDiv);
			
			
                }
	}
}

    function getLinkDensity(e) {
        var links      = e.getElementsByTagName("a");
        var textLength = getInnerText(e).length;
        var linkLength = 0;
        for(var i=0, il=links.length; i<il;i+=1)
        {
	    
            linkLength += getInnerText(links[i]).length;
        }       

        return linkLength / textLength;
    }
function initializeNode(node) {
        node.readability = {"contentScore": 0};         

        switch(node.tagName) {
            case 'DIV':
                node.readability.contentScore += 5;
                break;

            case 'PRE':
            case 'TD':
            case 'BLOCKQUOTE':
                node.readability.contentScore += 3;
                break;
                
            case 'ADDRESS':
            case 'OL':
            case 'UL':
            case 'DL':
            case 'DD':
            case 'DT':
            case 'LI':
            case 'FORM':
                node.readability.contentScore -= 3;
                break;

            case 'H1':
            case 'H2':
            case 'H3':
            case 'H4':
            case 'H5':
            case 'H6':
            case 'TH':
                node.readability.contentScore -= 5;
                break;
        }
       
        node.readability.contentScore += getClassWeight(node);
    }
     function getInnerText(e, normalizeSpaces) {
        var textContent    = "";

        if(typeof(e.textContent) === "undefined" && typeof(e.innerText) === "undefined") {
            return "";
        }

        normalizeSpaces = (typeof normalizeSpaces === 'undefined') ? true : normalizeSpaces;
	e = e.cloneNode(true);
	if (e.nodeType != 3) {
		clean(e, "script");
	}

        if (navigator.appName === "Microsoft Internet Explorer") {
            textContent = e.innerText.replace( regexps.trim, "" ); }
        else {
            textContent = e.textContent.replace( regexps.trim, "" ); }
        if(normalizeSpaces) {
            return textContent.replace( regexps.normalize, " "); }
        else {
            return textContent; }
    }

 function grabArticle(page) {
	
        page = page ? page : document.body;

        var allElements = page.getElementsByTagName('*');

        var node = null;
        var nodesToScore = [];
        for(var nodeIndex = 0; (node = allElements[nodeIndex]); nodeIndex+=1) {
		var unlikelyMatchString = node.className + node.id;
        	if (unlikelyMatchString !== "undefined") {
        		if (unlikelyMatchString.search(regexps.unlikelyCandidates) !== -1 && node.tagName !== "BODY") {
        		continue;
                	}  
        	}

            if (node.tagName === "P" || node.tagName === "TD" || node.tagName === "PRE") {
                 nodesToScore[nodesToScore.length] = node;
            }

           if (node.tagName === "DIV") {
                if (node.innerHTML.search(regexps.divToPElements) === -1) {
                    try {
                        nodesToScore[nodesToScore.length] = node;
                    }
                    catch(e) {
                    }
					
                }
                else
                {
                    for(var i = 0, il = node.childNodes.length; i < il; i+=1) {
                        var childNode = node.childNodes[i];
                        if(childNode.nodeType === 3) { 
                        nodesToScore[nodesToScore.length] = childNode;
                        }
                    }
                }
            } 
        }
        var candidates = [];
        for (var pt=0; pt < nodesToScore.length; pt+=1) {
            var parentNode      = nodesToScore[pt].parentNode;
            var grandParentNode = parentNode ? parentNode.parentNode : null;
            var innerText       = getInnerText(nodesToScore[pt]);

            if(!parentNode || typeof(parentNode.tagName) === 'undefined') {
                continue;
            }

            if(innerText.length < 25) {
                continue; }

            if(typeof parentNode.readability === 'undefined') {
                initializeNode(parentNode);
                candidates.push(parentNode);
            }

            if(grandParentNode && typeof(grandParentNode.readability) === 'undefined' && typeof(grandParentNode.tagName) !== 'undefined') {
                initializeNode(grandParentNode);
                candidates.push(grandParentNode);
            }

            var contentScore = 0;
            contentScore+=1;

            contentScore += innerText.split(',').length;
            
            contentScore += Math.min(Math.floor(innerText.length / 100), 3);
            
            parentNode.readability.contentScore += contentScore;

            if(grandParentNode) {
                grandParentNode.readability.contentScore += contentScore/2;             
            }
        }
        var topCandidate = null;
        for(var c=0, cl=candidates.length; c < cl; c+=1)
        {
            candidates[c].readability.contentScore = candidates[c].readability.contentScore * (1-getLinkDensity(candidates[c]));
            if(!topCandidate || candidates[c].readability.contentScore > topCandidate.readability.contentScore) {
                topCandidate = candidates[c]; }
        }

        if (topCandidate === null || topCandidate.tagName === "BODY")
        {
            topCandidate = document.createElement("DIV");
            topCandidate.innerHTML = page.innerHTML;
            page.innerHTML = "";
            page.appendChild(topCandidate);
            initializeNode(topCandidate);
        }
        var articleContent        = document.createElement("DIV");
            articleContent.id     = "readability-content";
        var siblingScoreThreshold = Math.max(10, topCandidate.readability.contentScore * 0.2);
        var siblingNodes          = topCandidate.parentNode.childNodes;


        for(var s=0, sl=siblingNodes.length; s < sl; s+=1) {
            var siblingNode = siblingNodes[s];
            var append      = false;

            if(!siblingNode) {
                continue;
            }


            if(siblingNode === topCandidate)
            {
                append = true;
            }

            var contentBonus = 0;
            if(siblingNode.className === topCandidate.className && topCandidate.className !== "") {
                contentBonus += topCandidate.readability.contentScore * 0.2;
            }

            if(typeof siblingNode.readability !== 'undefined' && (siblingNode.readability.contentScore+contentBonus) >= siblingScoreThreshold)
            {
                append = true;
            }
            
            if(siblingNode.nodeName === "P") {
                var linkDensity = getLinkDensity(siblingNode);
                var nodeContent = getInnerText(siblingNode);
                var nodeLength  = nodeContent.length;
                
                if(nodeLength > 80 && linkDensity < 0.25)
                {
                    append = true;
                }
                else if(nodeLength < 80 && linkDensity === 0 && nodeContent.search(/\.( |$)/) !== -1)
                {
                    append = true;
                }
            }

            if(append) {

                var nodeToAppend = null;
                if(siblingNode.nodeName !== "DIV" && siblingNode.nodeName !== "P") {
                    
                    nodeToAppend = document.createElement("DIV");
                    try {
                        nodeToAppend.id = siblingNode.id;
                        nodeToAppend.innerHTML = siblingNode.innerHTML;
                    }
                    catch(er) {
                        nodeToAppend = siblingNode;
                        s-=1;
                        sl-=1;
                    }
                } else {
                    nodeToAppend = siblingNode;
                }
                
                if(nodeToAppend.className.search(regexps.retainDiv) !== -1) {
              		nodeToAppend.className = ""; 
		}
				articleContent.appendChild(nodeToAppend.cloneNode(true));
            }
        }

      prepArticle(articleContent);
			for (var pt=0; pt < nodesToScore.length; pt+=1) {
			    var parentNode      = nodesToScore[pt].parentNode;
			    var grandParentNode = parentNode ? parentNode.parentNode : null;
			    		delete parentNode.readability;
				if (grandParentNode) {
					delete grandParentNode.readability;
				}
			}
		if( articleContent.innerHTML == '' )
		{
			return " " ;
		}
		
		return articleContent.innerHTML;
 
    }
  function adjustWidth(articleContent) {
	  
		articleContent = articleContent? articleContent:document.body;
		adjustImageSize(articleContent);
		adjustVideoSize(articleContent);
		adjustTableSize(articleContent);
		adjustTableSizeImage(articleContent);
		
		
	 
 }
  function adjustWidthForExtractPage(articleContent){
		articleContent = articleContent? articleContent:document.body;
		adjustImageSizeForExtractPage(articleContent);
	}
  function adjustWidthForFirstPage(articleContent) {
	  
			articleContent = articleContent? articleContent:document.body;
			adjustImageSizeForFirstPage(articleContent);
			adjustVideoSize(articleContent);
			adjustTableSize(articleContent);
			adjustTableSizeImage(articleContent);
			
			
		 
	 }

//function disableTTS(){
 //  var isTTSSupported = "true";
 //  var finalWord	   = null;
 //  var checkCJK       = null;
 //  var checkCJKText   = null;
 //  var tagsList      = document.getElementsByTagName("div");
 //  var curTagsLength = tagsList.length;

 //  console.log("tts" + tagsList);   
 
  // for (var i=curTagsLength-1; i >= 0; i-=1){
   //   checkCJKText = tagsList[i].innerText;
  // }
  // console.log("tts....." + checkCJKText);   

 // for(var h = 0;h < 100; h +=1){
  //   if(ChineseJapneseKorean(checkCJKText[h]) === true) {
//	finalWord = checkCJKText[h]; 
//	checkCJK  = true;
//	isTTSSupported = "false"; //TTS
//	break;
  //   }
 // }
 //ToReaderApp.readerSpeechData(isTTSSupported);
// } 

function enablereaderspeech()
{

var readerSpeech = document.getElementById("reader_content_div").innerText;
var readerHead = document.getElementById("article_header").innerText;
var readerResult = readerHead.concat(readerSpeech);

return readerResult; 
}

function getArticleTitle() {
	var curTitle = "",
            origTitle = "";

        try {
            curTitle = origTitle = document.title;
            
            if(typeof curTitle !== "string") { 
                curTitle = origTitle = readability.getInnerText(document.getElementsByTagName('title')[0]);             
            }
        }
        catch(e) {}
        
        if(curTitle.match(/ [\|\-] /))
        {
            curTitle = origTitle.replace(/(.*)[\|\-] .*/gi,'$1');
            
            if(curTitle.split(' ').length < 3) {
                curTitle = origTitle.replace(/[^\|\-]*[\|\-](.*)/gi,'$1');
            }
        }
        else if(curTitle.indexOf(': ') !== -1)
        {
            curTitle = origTitle.replace(/.*:(.*)/gi, '$1');

            if(curTitle.split(' ').length < 3) {
                curTitle = origTitle.replace(/[^:]*[:](.*)/gi,'$1');
            }
        }
        else if(curTitle.length > 150 || curTitle.length < 15)
        {
            var hOnes = document.getElementsByTagName('h1');
            if(hOnes.length === 1)
            {
                curTitle = readability.getInnerText(hOnes[0]);
            }
        }

        curTitle = curTitle.replace( regexps.trim, "" );

        if(curTitle.split(' ').length <= 4) {
            curTitle = origTitle;
        }
       
        return curTitle;
	
}


function initReader() {
	
	var article_block = grabArticle();
	var reader_div = document.createElement("div");
	reader_div.id = "reader_div";
	reader_div.style.display='none';
	
	if (article_block) {
		var reader_script = document.createElement("script");
		reader_script.type='text/javascript';
		parsedPages[window.location.href.replace(/\/$/, '')] = true;
		var nextPageLink = findNextPageLink(document.body);
		

		reader_div.appendChild(reader_script);
		var reader_title_div = document.createElement("div");
		var reader_header = document.createElement("h1");
		reader_header.textContent=getArticleTitle();
		reader_title_div.appendChild(reader_header);
		reader_div.appendChild(reader_title_div);
		var reader_content_div = document.createElement("div");
		reader_content_div.innerHTML = article_block;
		reader_content_div.innerHTML = "<div id='readability-page-1' class='SISO_page'>"+article_block+"</div>";
		reader_div.appendChild(reader_content_div);
		reader_content_div.outerHTML += nextPageLink;
	}
	else {
		reader_div.innerHTML = "<h1>Sorry!</h1><p>This page is not able to be processed by Reader</p>";
	}
	document.getElementsByTagName("body")[0].appendChild(reader_div);
}
