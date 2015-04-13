
// Action handler
void IndustryHandler(int a) { // change name to be the same as fileName + Handler, in this case HouseHandler since fileName is "House"
  // Change these variables for each unique tab//////////////////////////////////////////////
  int tabIndex = 2; // this is where we are storing the result of this tab into, should be unique for each tab

  String finalStr[] = new String[] {"Agriculture, forestry, fishing", // Stored result values to be stored into resultStr 
                                    "Mining", 
                                    "Construction", 
                                    "Manufacturing", 
                                    "Transportation", 
                                    "Wholesale trade", 
                                    "Retail trade", 
                                    "Finance, insurance, real estate, rental and leasing", 
                                    "Business, professional, scientific, management, administrative, waste management services", 
                                    "Health and social services", 
                                    "Educational services", 
                                    "Arts, entertainment, recreation, accommodation, food, personal services", 
                                    "Public administration", 
                                    "Communication, information, and other public utilities"
                                  }; 
  println("Industry: radio Button event: "+a);  // if you really want you can change the name of the tab
  
  ///////////////////////////////////////////////////////////////////////////////////////////
  
  int index = a - 1; // subtracting one for array indexing
  if(a < 0){
   resultStr[tabIndex] = ""; // reset resultStr 
  }
  else{
    resultStr[tabIndex] = finalStr[index];
    resultFloat[tabIndex] = a;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);
  }
}

// Household Size button display
public void industry(){
  // Only need to change these variables//////////////////////////////////////////////////////
  int numImg = 14;  // number of images/buttons
  String tabLabel = "Industry"; // name of tab/screen that we want to attach this to
  String fileName = "Industry"; // name of the file name, ex. House-1.png, House-2.png and Active-House-1.png, active-House-2.png
  String fileType = ".png"; // filetype extension
  // Formatting vars /////////////////////////////////////////////////////////
  int leftIndent = 20;
  int topIndent = 120;
  int numCols = 5;
  int horizSpacing = 50;
  int vertSpacing = 50;
  // Temp vars ////////////////////////////
  int i = 0;
  String activeStr, defaultStr;
  //resultStr[tabIndex] = "";  // initializing
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
         .setSize(defaultImgs[0].width * 3 / 4,defaultImgs[0].height * 3 / 4)
         .setItemsPerRow(numCols)
         .setSpacingColumn(horizSpacing)
         .setSpacingRow(vertSpacing)
         .moveTo(tabLabel)
         ;
  for(i = 0; i < numImg; i++){
      defaultStr = fileName + "-" + new Integer(i+1).toString();
      radioObj.addItem(defaultStr, i + 1); // i + 1 for sending to server float
      cp5.getController(defaultStr).setImages(defaultImgs[i], activeImgs[i], activeImgs[i]);
  }
     
}

