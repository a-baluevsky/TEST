var gs_ContentsUrl="";
var gs_ViewMode="";
function chkPgHash() {
	var re = /#(exp|clp|nav|view)PageUrl=(.+)/gi;
	var m=re.exec(document.location.hash)
	if(m) {
		gs_ViewMode = m[1];
		gs_ContentsUrl = m[2];
		/*alert("Custom view mode:"+gs_ViewMode+"\nURL: "+gs_ContentsUrl);*/
	}
};
chkPgHash();
function setCollapseState(bCollapsed) {
	var sNewDisp = "";
	if(bCollapsed) {
		btnToggleHeader.value="▼";
		sNewDisp = "none";
	} else btnToggleHeader.value="▲";
	dvInfoBanner.style.display=sNewDisp;	
	dvLogo.style.display=sNewDisp;
}
function ToggleHeader_onclick() {
	if(btnToggleHeader.value=="▼") {
		setCollapseState(false);
	} else {
		setCollapseState(true);
	}		
}

function initSiteSection() {
	switch(gs_ViewMode) {
		case "exp": case "nav":
			alert("Normal view: "+gs_ContentsUrl);
			setCollapseState(false);
			tblView.style.width=1100;
			break;
		case "clp": case "view":
			alert("Collapsed view: "+gs_ContentsUrl);
			setCollapseState(true);			
			break;
	}
};
window.onload = initSiteSection;

function ToggleHeader_onclick() {
	var sNewCap, sNewDisp;
	if(btnToggleHeader.value=="▼") {
		sNewCap="▲";
		sNewDisp = "";	
	} else {
		sNewCap="▼";
		sNewDisp = "none";	
	}	
	btnToggleHeader.value=sNewCap;
	dvInfoBanner.style.display=sNewDisp;	
	dvLogo.style.display=sNewDisp;		
}



