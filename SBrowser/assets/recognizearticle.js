try {
var pageMain = null;
var readability = {}
// added form to regexps.divToPElements as forms can be inside div too,We don't want to add forms to our reader.
regexps = {
			unlikelyCandidates:    /combx|comment|community|disqus|extra|foot|header|menu|remark|rss|shoutbox|sidebar|sponsor|ad-break|agegate|pagination|pager|popup|tweet|twitter/i,
			okMaybeItsACandidate:  /and|article|body|column|main|shadow/i,
			positive:              /article|body|content|entry|hentry|main|page|pagination|post|text|blog|story|windowclassic/i,
			negative:              /contents|combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|shoutbox|sidebar|date|sponsor|shopping|tags|script|tool|widget|scbox|rail|reply|div_dispalyslide|galleryad|disqus_thread|cnn_strylftcntnt|topRightNarrow|fs-stylelist-thumbnails|replText|ttalk_layer|disqus_post_message|disqus_post_title|cnn_strycntntrgt|wpadvert|sharedaddy sd-like-enabled sd-sharing-enabled|fs-slideshow-wrapper|fs-stylelist-launch|fs-stylelist-next|fs-thumbnail-194230|reply_box|textClass errorContent|mainHeadlineBrief|mainSlideDetails|curvedContent|photo|home_|XMOD|adsense/i,
			extraneous:            /print|archive|comment|discuss|e[\-]?mail|share|reply|all|login|sign|single/i,
			divToPElements:        /<(a|blockquote|dl|div|img|ol|p|pre|table|ul|script|article|form|select)/i,
			replaceBrs:            /(<br[^>]*>[ \n\r\t]*){2,}/gi,
			replaceFonts:          /<(\/?)font[^>]*>/gi,
			trim:                  /^\s+|\s+$/g,
			normalize:             /\s{2,}/g,
			killBreaks:            /(<br\s*\/?>(\s|&nbsp;?)*){1,}/g,
			videos:                /http:\/\/(www\.)?(youtube|vimeo)\.com/i,
			skipFootnoteLink:      /^\s*(\[?[a-z0-9]{1,2}\]?|^|edit|citation needed)\s*$/i,
			nextLink:              /(next|weiter|continue|>([^\|]|$)|([^\|]|$))/i,
			prevLink:              /(prev|earl|old|new|<|)/i,
			jsonData:	       /(\"{\"|{|}\|}\"")/i,	
			remIdClass:	       /(customerDiscussions|review|productDescriptionWrapper|rhfHistoryWrapper)/i,
			homePage:	       /(\?mview=desktop|\?ref=smartphone|apple.com|query=|search\?|\?from=mobile|signup|twitter|facebook|youtube|\?f=mnate|linkedin|dromaeo|chrome:|\?mobile|gsshop|gdive|\?nytmobile=0|\?CMP=mobile_site|\?main=true|home-page|anonymMain)/i,
			homePageExtra:     /(privacy|termsofuse|policy)/i,
	        homePageSocial:    /(facebook|twitter|linkedin|youtube)/i
	  }

function getLinkDensity(e) {
	var links      = e.getElementsByTagName("a");
	var textLength = getInnerText(e).length;
	var linkLength = 0;
	for(var i=0, il=links.length; i<il;i+=1) {
		linkLength += getInnerText(links[i]).length;
	}       
	var dummyLinks = e.getElementsByTagName("li");		for(var k=0;k<dummyLinks.length;k++){		if(dummyLinks[k].getAttribute('data-url') != null || dummyLinks[k].getAttribute('date-url') != null ){			linkLength += getInnerText(dummyLinks[k]).length;		}	}	
	return linkLength / textLength;
}	

function getClassWeight(e) {

	var weight = 0;

	if (typeof(e.className) === 'string' && e.className !== '') {
		if(e.className.search(regexps.negative) !== -1) {
			weight -= 25; 
		}

		if(e.className.search(regexps.positive) !== -1) {
			weight += 30; 
		}
	}

	if (typeof(e.id) === 'string' && e.id !== '') {
		if(e.id.search(regexps.negative) !== -1) {
			weight -= 25; 
		}

		if(e.id.search(regexps.positive) !== -1) {
			weight += 30; 
		}
	}

	return weight;
}
function initializeNode(node) {
	node.readability = {"contentScore": 0};         

	switch(node.tagName) {
		case 'DIV':
			node.readability.contentScore += 5;
			break;

		case 'ARTICLE':
			node.readability.contentScore += 25;
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
function getActualInnerText(node){

       if (node.parentNode && node.parentNode.tagName === 'SCRIPT')              //implies that this is actually the content of the script node which we should not consider
	   	return "";

	if (node.nodeType == 3){
		return node.data;}

	var ActualInnerText = "";

	node = node.firstChild;

	while(node){
		ActualInnerText = ActualInnerText + getActualInnerText(node);
	       node = node.nextSibling;
	}
		
   return ActualInnerText;

}
function getInnerText(e, normalizeSpaces) {
	var textContent    = "";

	if(typeof(e.textContent) === "undefined" && typeof(e.innerText) === "undefined") {
		return "";
	}

	normalizeSpaces = (typeof normalizeSpaces === 'undefined') ? true : normalizeSpaces;

	if (navigator.appName === "Microsoft Internet Explorer") {
		textContent = e.innerText.replace( regexps.trim, "" ); 
	}
	else {
		textContent = getActualInnerText(e);
	//	textContent = e.textContent.replace( regexps.trim, "" ); 
	}

	if(normalizeSpaces && typeof(textContent) !== "undefined") {
		return textContent.replace( regexps.normalize, " "); 
	}
	else {
		return textContent; 
	}
}

function GetStyle(Element, CssProperty){

	var strValue = "";

	if (pageMain.ownerDocument.defaultView && pageMain.ownerDocument.defaultView.getComputedStyle && pageMain.ownerDocument.defaultView.getComputedStyle(Element, ""))
		strValue = pageMain.ownerDocument.defaultView.getComputedStyle(Element, "").getPropertyValue(CssProperty);

       return strValue;
}


function isVisibleNode(CandidateNode) {	while (CandidateNode != null) {        if ((GetStyle(CandidateNode, "display") === "none") || (GetStyle(CandidateNode, "left") === "100%") || (GetStyle(CandidateNode, "clip") === "rect(0px 0px 0px 0px)")) {            return false;        }        CandidateNode = CandidateNode.parentNode;    }    return true;
}
function ChineseJapneseKorean(innerCharacter) {
	if (!innerCharacter || innerCharacter.length == 0) return false;

	var innerCharacterCode = innerCharacter.charCodeAt(0);
	
	if (innerCharacterCode > 11904 && innerCharacterCode < 12031) return true; 
	if (innerCharacterCode > 12352 && innerCharacterCode < 12543) return true; 
	if (innerCharacterCode > 12736 && innerCharacterCode < 19903) return true; 
	if (innerCharacterCode > 19968 && innerCharacterCode < 40959) return true; 
	if (innerCharacterCode > 44032 && innerCharacterCode < 55215) return true; 
	if (innerCharacterCode > 63744 && innerCharacterCode < 64255) return true;
	if (innerCharacterCode > 65072 && innerCharacterCode < 65103) return true; 
	if (innerCharacterCode > 131072 && innerCharacterCode < 173791) return true;
	if (innerCharacterCode > 194560 && innerCharacterCode < 195103) return true;
	return false;
}	
//>> SAMSUNG CHANGE -  This function is added because in somesites if the gap ( blank spaces ) between two words are more than a single space. Then we have to consider only one space irrespective of the number of spaces present between two words.	
function getActualSplitLength(splitlength,readerText){

	for(var t = 0; t < readerText.length - 1; t++) {
		
			if(readerText[t]==' ') {
			
		    if(readerText[t]== readerText[t+1]){
		     splitlength = splitlength - 1 ;
			
			}		
		}
	}
	
	return splitlength;
}/** * this API will return false in case, node is hidden/ not visible to user by any CSS property. * these nodes should not be added to topCandidate calculation. */function checkIfNodeIsHidden(node){	var rect = node.getBoundingClientRect();	if(rect.height == 0 && rect.width == 0){		return true;	}	return false;}

function checkIfFormPage(){
	
	var forms = document.getElementsByTagName('form');
	var formTotalHeight = 0;
	for(var i=0;i<forms.length;i++){
		if(forms[i].getBoundingClientRect())
			formTotalHeight += forms[i].getBoundingClientRect().height;
	}
	var documentTotalHeight = 0;
	if(document.body.getBoundingClientRect())
		documentTotalHeight = document.body.getBoundingClientRect().height;
	
	if(formTotalHeight > (documentTotalHeight*0.5))
		return true;
	else
		return false;
}

//<< SAMSUNG CHANGE 
function recognizeArticle() {		var scriptUrl = location.href;
	var CJK;
        var mainBody = document.body;
	if(mainBody === null || mainBody === "undefined") {
		return false + "@##@" + scriptUrl;
	}
	// clone node is commented as after cloning & doing innerText on them is giving different value than directly doing innerText on node.As we are not doing 
	// clone node, so you  shouldn't manipulate DOM in recongnizearticle.
//	var page = mainBody.cloneNode(true);
	var page = mainBody;
	pageMain = page;
	var recog_div = document.createElement("div");
	recog_div.id = "recog_div";
	recog_div.style.display='none';
	
	var hostName = document.location.hostname + "/" ;
//	hostName = hostName + "/";
	var hrefName = window.location.href;
	var hrefPage = hrefName.replace(/http:\/\/|https:\/\//i, "");

	if(hostName === hrefPage ||  hrefPage.search(regexps.homePage) !== -1)  {
	    if(hrefPage.search(regexps.homePageExtra) !== -1){
	    }
		else if(hrefPage.search(regexps.homePageSocial) > 15) {
		
		
		}
		
		else{
		recog_div.innerHTML = "false";
		
		return false + "@##@" + scriptUrl;
		
		}
	}
	
	if(checkIfFormPage()){
		return false;
	}
	var allElements = page.getElementsByTagName('*');
	var node = null;
	var nodesToScore = [];
	for(var nodeIndex = 0; (node = allElements[nodeIndex]); nodeIndex+=1) {
		var unlikelyMatchString = node.className + node.id;
		if (unlikelyMatchString !== "undefined") {
			if (unlikelyMatchString.search(regexps.unlikelyCandidates) !== -1 && unlikelyMatchString.search(regexps.okMaybeItsACandidate) === -1 && node.tagName !== "BODY") {
				continue;
			}  
		}	
		// we should not consider the nodes which are hidden while calculating the scores.
		if(GetStyle(node, "display") === "none"  || (GetStyle(node, "clip") === "rect(0px 0px 0px 0px)")){
			continue;
		}				if(checkIfNodeIsHidden(node)){			continue;		}
   //SAMSUNG CHANGE - We should first check for a nested table and if this is so, we should only take the innermost table, not any of the outer table

		if (node.tagName === "P" || node.tagName === "UL" ||( (node.tagName === "TD") && (node.getElementsByTagName('TABLE').length === 0)) || node.tagName === "PRE"||node.tagName === "p" || node.tagName === "ul" ||( (node.tagName === "td") && (node.getElementsByTagName('table').length === 0)) || node.tagName === "pre") {
			nodesToScore[nodesToScore.length] = node;
		}
		if(node.nodeType === 8){
			//added for removing comments
		}
		if (node.tagName === "DIV" || node.tagName === "div") {
			if (node.innerHTML.search(regexps.divToPElements) === -1) {
				try {
					var parent = node.parentNode;
					var parentSpecs = parent.id + parent.className;
					
					if(parentSpecs != undefined){
						if (parentSpecs.search(regexps.unlikelyCandidates) !== -1 && parentSpecs.search(regexps.okMaybeItsACandidate) === -1 && node.tagName !== "BODY") {
							continue;
						}  
					}
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

		
		if(innerText.length < 30) {
			continue; }

		
		if(typeof parentNode.readability === 'undefined') {
			initializeNode(parentNode);
			candidates.push(parentNode);

		}

		
		if((grandParentNode && typeof(grandParentNode.readability) === 'undefined' && typeof(grandParentNode.tagName) !== 'undefined')) {
			initializeNode(grandParentNode);
			candidates.push(grandParentNode);

		}

		var contentScore = 0;

		
		contentScore+=1;
		
		contentScore += innerText.split(',').length;
		var innerTextLength = 0;
		for (var i = 0; i < innerText.length; i++) {
			innerCharacter = innerText[i]; 
			if (ChineseJapneseKorean(innerCharacter) == true)
			{
				innerTextLength++;
				CJK = true;
			} 

		}
		if(CJK) {
			contentScore += Math.min(Math.floor(innerText.length / 100), 3);
			contentScore = contentScore * 3;
		}	    
		else
		{
			if(innerText.length < 25) {
				continue; 
			}
			contentScore += Math.min(Math.floor(innerText.length / 100), 3);
		}

		if(parentNode.readability != undefined)
			parentNode.readability.contentScore += contentScore;

		if(grandParentNode) {
			if(grandParentNode.readability != undefined)
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
//>> SAMSUNG CHANGE - after we find top candidates, we check how many similar top-candidates were within a 15% range of this top-candidate - this is needed because on homepages, there are several possible topCandidates which differ by a minute amount in score. The check can be within a 10% range, but to be on the safe-side we are using 15%. 
//>> SAMSUNG CHANGE -  Usually, for proper article pages, a clear, definitive topCandidate will be present.
      var neighbourCandidates = 0;
      for(var c=0, cl=candidates.length ; c < cl && topCandidate; c+=1)
	{
//SAMSUNG CHANGE -  We should not count the topCandidate when checking for neighbouring candidates
	     if((candidates[c].readability.contentScore >= topCandidate.readability.contentScore*0.85) && (candidates[c] !== topCandidate)) {			
//SAMSUNG CHANGE - 
//	    	 if(isVisibleNode(candidates[c]))
	    		 neighbourCandidates++; 
			}
	}
//<<SAMSUNG CHANGE -  
	var numberOfTrs = 0;
	var HOneLength = 0,HTwoLength = 0,HThreeLength = 0,HFourLength = 0,HFiveLength = 0,HSixLength = 0;
	if (topCandidate != null || topCandidate != undefined) {
	if (topCandidate.tagName === "TR" || topCandidate.tagName === "TBODY") 
	{
		topcandidateTR = topCandidate.getElementsByTagName("tr");
		numberOfTrs = topcandidateTR.length;
		}else if(topCandidate.className.search(regexps.remIdClass) !== -1) {
			return false;
		}
	
		HOneLength = topCandidate.getElementsByTagName('h1').length;
		HTwoLength = topCandidate.getElementsByTagName('h2').length;
		HThreeLength = topCandidate.getElementsByTagName('h3').length;
		HFourLength = topCandidate.getElementsByTagName('h4').length;
		HFiveLength = topCandidate.getElementsByTagName('h5').length;
		HSixLength = topCandidate.getElementsByTagName('h6').length;
		
	}
	//>>SAMSUNG CHANGE -  For now, the check for neighbourCandidates has threshold of 3, it can be modified later as and when required.
	if (neighbourCandidates >= 2)
	{
	     return false;

	}

	else if (topCandidate === null || topCandidate.tagName === "BODY" || topCandidate.tagName === "FORM")
	{
		 return false;
	}
	else if(HOneLength > 99 || HTwoLength > 99 || HThreeLength > 99 || HFourLength > 99 || HFiveLength > 99 || HSixLength > 99  ){
		return false;
	}	else if(!isVisibleNode(topCandidate) && neighbourCandidates == 0){		// control will come here if there is no other nodes which can be considered as top candidate, & topcandidate is not visible to user.		return false;			}
	else
	{
		
		var splitLength = topCandidate.innerText.split(' ').length;			
		var readerScore = topCandidate.readability.contentScore;
		var readerTrs = numberOfTrs;

		var readerTextlength = topCandidate.innerText.length;
		var readerPlength = topCandidate.getElementsByTagName("p").length;				var links_counter = topCandidate.getElementsByTagName("a").length;

		//>> SAMSUNG CHANGE 
		var readerText = topCandidate.innerText;
		splitLength = getActualSplitLength(splitLength,readerText);
		//<< SAMSUNG CHANGE
		
		//>> SAMSUNG CHANGE -  Even after calculating the proper splitlength , Reader icon was displayed for some homepage.
		if((readerScore >= 40 && readerTrs < 3 ) || (readerScore >= 20 && readerScore < 30 && readerTextlength >900 && readerPlength >=2 && readerTrs < 3 && !CJK) || (readerScore >= 20 && readerScore < 30 && readerTextlength >1900 && readerPlength >=0 && readerTrs < 3 && !CJK) || (readerScore > 15 && readerScore <=40  && splitLength >=100 && readerTrs < 3 ) || (readerScore >= 100 && readerTextlength >2000  && splitLength >=250 && readerTrs > 200)) 
		
		//<< SAMSUNG CHANGE 
		
		{
		
			for (var pt=0; pt < nodesToScore.length; pt+=1) {
				var parentNode      = nodesToScore[pt].parentNode;
				var grandParentNode = parentNode ? parentNode.parentNode : null;
				if(grandParentNode !== null){
				delete parentNode.readability;
				delete grandParentNode.readability;
			}
			}
						if(links_counter > 200){						 							 return false;									}
                        if(readerScore >= 40 && readerTextlength <= 155) {
                        	return false + "@##@" + scriptUrl;
//                 		recog_div.innerHTML = "false"; 
                        }
                        else {
                        	return true + "@##@" + scriptUrl;
//				recog_div.innerHTML = "true";
                        }

		}

		else
		{	
			return false + "@##@" + scriptUrl;
//			recog_div.innerHTML = "false";
		}
//avoiding adding div to body, as on some sites recog_div style:none property was overridden by other CSS files on that webpage. 
//		document.getElementsByTagName("body")[0].appendChild(recog_div);
//		return recog_div.innerHTML;
	
	}

}
recognizeArticle();
}
catch(e) {
}