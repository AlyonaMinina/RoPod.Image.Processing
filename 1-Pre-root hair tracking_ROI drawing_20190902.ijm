/*
 * AIM OF THE MACRO
 * 	- Preselect the root hairs that will be analysed later using a straight line (Manual step)
 * 	- Save all the ROI in one file that will be used for a further process
 * 	
 * BEFORE RUNNING THE MACRO
 *	Open: a file with growing root hairs (e.g. a stiched image of a root)
 *	
 *CREDIT
 * Marjorie Guichard, Grossmann lab, Center for Organismal Studies, Heidelberg, Germany, 02/09/2019
 * marjorie.guichard@cos.uni-heidelberg.de
 */


//some cleaning
roiManager("Reset");

//get Image name and clean it
ImageName = getTitle();
dotIndex = indexOf(ImageName, ".tif");
RootImageName = substring(ImageName, 0, dotIndex);

//choose output directory
output = getDirectory("Choose output directory");

//Draw line over an 1st hair and store it in ROI manager
setTool("line");
waitForUser("Draw a STRAIGHT line over a growing Root hair \n The line should start at the rootward end, \n and finish a bit further than the root hair tip \n Pay attention to draw the line at least after the slice when hair stop growing!!!!! \n (if you have doubt, draw on the last slice)");
setSlice(nSlices);
roiManager("add");
roiManager("select", 0);
roiManager("rename", "roi_01");
roiManager("show all without labels");

// initiation before loop
waitForUser("Have a look to check if other hairs need to be tracked");
a=2

// loop to select new hairs and store corresponding ROI
while(getBoolean("Do you want to draw another hair?")==true){
	setTool("line");
	waitForUser("Draw a STRAIGHT line over a growing Root hair \n The line should start at the rootward end, \n and finish a bit further than the root hair tip \n Pay attention to draw the line at least after the slice when hair stop growing!!!!! \n (if you have doubt, draw on the last slice)");
	setSlice(nSlices);
	roiManager("add");
	roiManager("select", a-1);
	if(a<10){
		roiManager("rename", "roi_0"+a);
	}
	else{
		roiManager("rename", "roi_"+a);
	}	
	roiManager("show all without labels");
	a = a+1;
	waitForUser("Have a look to check if other hairs need to be tracked");
 }

 //ROI manager saving
 	//loop to select all ROI in ROI manager
ROItoSelect = newArray();
for (i = 0; i < roiManager("count"); i++) {
	ROItoSelect = Array.concat(ROItoSelect, i);
 }
 roiManager("select", ROItoSelect);
 roiManager("save selected", output + File.separator + RootImageName+"_ROI.zip");

//some cleaning
run("Close All");
roiManager("deselect");
roiManager("delete");

showMessage("Tada!");
