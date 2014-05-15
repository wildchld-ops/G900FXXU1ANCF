function enableSamsungNightMode(){
	//applying background & font-color css on whole body,instead of one div.
	
	var iframeReaderDiv      	   		= document.getElementsByTagName('style')[0].innerHTML;
	var parentOfStyleElement 			= iframeReaderDiv.parentNode;
	
	var bodyEl = document.getElementsByTagName('body')[0];
	bodyEl.style.backgroundColor = "#000000";
	bodyEl.style.color 		= "#FFFFFF"; 
	
	/*var reader_content_div   			= document.getElementById('reader_content_div');  
	reader_content_div.style.background = "#000000";
	reader_content_div.style.color 		= "#FFFFFF"; 
	
	//changed 09 oct 12, fix night mode issue as browser will provide its style for table.
	// so overriding table styles here.
	var tableNodes = document.getElementsByTagName('table');
	for(var i=0;i<tableNodes.length;i++){
		tableNodes[i].style.background = "#000000";
		tableNodes[i].style.color 		= "#FFFFFF"; 
	}*/
	
}

function enableSamsungDayMode(){
	var iframeReaderDiv      	   		= document.getElementsByTagName('style')[0].innerHTML;
	var parentOfStyleElement 			= iframeReaderDiv.parentNode;
	
	var bodyEl = document.getElementsByTagName('body')[0];
	bodyEl.style.backgroundColor = "#f7f7f7";
	bodyEl.style.color 		= "#000000"; 
	
	/*var reader_content_div   			= document.getElementById('reader_content_div');  
	reader_content_div.style.background = "#FFFFFF";
	reader_content_div.style.color 		= "#000000";
	
	//changed 09 oct 12, fix night mode issue as browser will provide its style for table.
	// so overriding table styles here.
	var tableNodes = document.getElementsByTagName('table');
	for(var i=0;i<tableNodes.length;i++){
		tableNodes[i].style.background = "#FFFFFF";
		tableNodes[i].style.color 		= "#000000"; 
	}*/
	
}