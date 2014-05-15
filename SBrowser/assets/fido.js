if ((typeof fido !== "undefined") && fido && fido.ready && (!window.hasOwnProperty('injectedfidojs'))) {
    window.injectedfidojs = true;

    function isVersionInRange(version,start,end)
    {
        var versionArr = version.split(".");
        var startArr  = start.split(".");
        var endArr  = end.split(".");
        var bFoundInRange = false;
        for(var i=0; i< Math.min(versionArr.length, startArr.length ); i++)
        {
            if(parseInt(versionArr[i]) > parseInt(startArr[i])) {
                bFoundInRange = true;
                break;
            }
            else if(parseInt(versionArr[i]) < parseInt(startArr[i]))
                return false;
        }
        
        if(!bFoundInRange && versionArr.length < startArr.length)
            return false;
        bFoundInRange=false;
        for(var i=0; i < Math.min(versionArr.length, endArr.length ) ; i++)
        {
            if(parseInt(versionArr[i]) < parseInt(endArr[i])) {
                bFoundInRange = true;
                break;
            }
            else if(parseInt(versionArr[i]) > parseInt(endArr[i]))
                return false;
        }
        if(versionArr.length <= endArr.length)
            bFoundInRange = true;
        if(!bFoundInRange && versionArr.length > endArr.length)
            return false;
        
        return bFoundInRange;
    }

    
    fido.getClientVersionInfo = function (serverVersionInfoObj) {
        var JSAPIRangeStart = serverVersionInfoObj.JSAPIRange.start;
        var JSAPIRangeEnd = serverVersionInfoObj.JSAPIRange.end;
        var clientVersionInfo = {
            "JSAPIVer": "1.0",
            "OSTPRange": {
                "start": MFACSDK.getVerRangeStart(),
                "end": MFACSDK.getVerRangeHigh()
            }
        };
        
        if (!isVersionInRange(clientVersionInfo.JSAPIVer, JSAPIRangeStart, JSAPIRangeEnd))
            return null;
        
        return clientVersionInfo;
    }

//    function getServerUrl() {
//    	var su = null;
//    	if (fido.getServerInfo) {
//    		var obj = fido.getServerInfo();
//    		if (obj && obj.serverUrl) {
//    			su = obj.serverUrl;
//    		}
//    	}
//    	return su;
//    }
    
    function getServerUrl() {
    	var jsonString = null;
    	if (fido.getServerInfo) {
    		var obj = fido.getServerInfo();
    		if (obj) {
    			jsonString = JSON.stringify(obj);
    		}
    	}
    	return jsonString;
    }
//    
    
    function getRequestParam(requestParam) {
    	var jsonString = null;
    	if(requestParam) {
    		jsonString = JSON.stringify(requestParam);
    	}
    	return jsonString;
    }
    
    fido.io = {}

    fido.io.send = function(ostpRequest, requestParam) {
    
        try {
            // Call MFAC SDK to process OSTP request
            var resp = MFACSDK.process(ostpRequest, getRequestParam(requestParam), getServerUrl());
                
            // Return OSTP response to the caller
            fido.respond(MFACSDK.getLastError().toLowerCase(), {"nomatch":MFACSDK.getNoMatch(), "cmsg":resp});
            
        } catch(e) {
            // handle error situation
            fido.respond("failure");
        }
    }
  
    fido.ready("success", { "reged": MFACSDK.isReged(getServerUrl()) });
}
