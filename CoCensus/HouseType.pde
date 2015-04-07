
// Action handler
void HouseTypeHandler(int a) { // change name to be the same as fileName + Handler, in this case HouseHandler since fileName is "House"
  // Change these variables for each unique tab
  int tabIndex = 2; // this is where we are storing the result of this tab into, should be unique for each tab
  String finalStr[] = new String[] {"One-family house",                       // Stored result values to be stored into resultStr
                                    "Attached One-family house", 
                                    "Building with 2 apartments", 
                                    "Building with 3-4 apartments", 
                                    "Building with 5-9 apartments", 
                                    "Building with 10-19 apartments", 
                                    "Building with 20-49 apartments", 
                                    "Building with 50 or more apartments", 
                                    "Boat, RV, van, mobile home or other home"
                                  }; 
  println("HouseType: radio Button event: "+a);
  resultStr[tabIndex] = finalStr[a];
}

// Household Size button display
public void houseType(){
  // Only need to change these variables/////////////////////////
  int numImg = 9;  // number of images/buttons
  String tabLabel = "House Type"; // name of tab/screen that we want to attach this to
  String fileName = "HouseType"; // name of the file name, ex. House-1.png, House-2.png and Active-House-1.png, active-House-2.png
  String fileType = ".png"; // filetype extension
  // Formatting vars ////////////////////////////
  int leftIndent = 20;
  int topIndent = 120;
  int numCols = 3;
  int horizSpacing = 50;
  int vertSpacing = 50;
  // Temp vars ////////////////////////////
  int i = 0;
  String activeStr, defaultStr;
  
  PImage[] activeImgs = new PImage[numImg];
  PImage[] defaultImgs  = new PImage[numImg];
   
  for(i = 0; i < numImg; i++){    
    activeStr = "Active-" + fileName + "-" + new Integer(i+1).toString() + fileType;
    defaultStr = fileName + "-" + new Integer(i+1).toString() + fileType;  
    activeImgs [i] = loadImage(activeStr);
    defaultImgs[i] = loadImage(defaultStr);    
  }
    
  RadioButton radioObj = cp5.addRadioButton(fileName+"Handler")
         .setPosition(leftIndent,topIndent)
         .setSize(defaultImgs[0].width,defaultImgs[0].height)
         .setItemsPerRow(numCols)
         .setSpacingColumn(horizSpacing)
         .setSpacingRow(vertSpacing)
         .moveTo(tabLabel)
         ;
  for(i = 0; i < numImg; i++){
      defaultStr = fileName + "-" + new Integer(i+1).toString();
      radioObj.addItem(defaultStr, i);
      cp5.getController(defaultStr).setImages(defaultImgs[i], activeImgs[i], activeImgs[i]);
  }
     
}

