
Textarea titleTextArea1, helpTextArea1;

// Action handler
void HouseTypeHandler(int a) { // change name to be the same as fileName + Handler, in this case HouseHandler since fileName is "House"
  // Change these variables for each unique tab
  int tabIndex = 3; // this is where we are storing the result of this tab into, should be unique for each tab
  
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
  println("HouseType: radio Button event: "+a); // if you really want you can change the name of the tab
  
  ///////////////////////////////////////////////////////////////////////////////////////////
  int index = a - 1; // subtracting one for array indexing  
  if(a < 0){
    resultStr[tabIndex] = ""; // reset resultStr 
    
    houseTypeAnswer.setText("");
    cp5.getTab("House Type").setColorBackground(tabBackground).setColorActive(tabBackgroundSelect);
    ////////cp10.hide();
  }
  else{
    resultStr[tabIndex] = finalStr[index];
    resultFloat[tabIndex] = a;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);
    
    houseTypeAnswer.setText(houseTypeArray[index]);
    cp5.getTab("House Type").setColorBackground(tabBackgroundComplete).setColorActive(tabBackgroundComplete);
    ////////cp10.show();
  }
  
  // changes answered tab green
 
  helpTextArea1.setColorBackground(windowBackground);
  //titleTextArea1.setColorBackground(windowBackground);
  //

}

// Household Type button display
public void houseType(){
  // Only need to change these variables//////////////////////////////////////////////////////
  int numImg = 9;  // number of images/buttons
  String tabLabel = "House Type"; // name of tab/screen that we want to attach this to
  String fileName = "HouseType"; // name of the file name, ex. HouseType-1.png, HouseType-2.png and Active-HouseType-1.png, Active-HouseType-2.png
  String fileType = ".png"; // filetype extension
  
  String titleText = tabLabel;
  String helpText = "Which of these best describes your house?";
  // Formatting vars /////////////////////////////////////////////////////////
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
    
  
    
  //Textarea titleTextArea, helpTextArea;
  //titleTextArea1 = cp5.addTextarea(fileName + "Title")
    //.setColorBackground(windowBackground)
    //.setColorActive(windowBackground)
    //.setColorForeground(windowBackground)
    //.disableColorBackground()
  //  .setPosition(leftIndent, 20)
  //  .setSize(width-80, 100)
  //  .setLineHeight(72)
  //  .setColor(0)
  //  .setFont(titleFont)
  //  .setText(titleText)
  //  .hideScrollbar()
  //  .moveTo(tabLabel)
  //  .setUpdate(false)
  //  ;
  helpTextArea1 = cp5.addTextarea(fileName + "HelpText")
    //.setColorBackground(windowBackground)
    //.setColorActive(windowBackground)
    //.setColorForeground(windowBackground)
    //.disableColorBackground()
    //.setPosition(leftIndent + (numCols *(defaultImgs[0].width + horizSpacing)), topIndent)
    .setPosition(20, 20)
    //.setSize(width-(leftIndent + (numCols *(defaultImgs[0].width + horizSpacing))), height - (height - 880) - topIndent)
    .setSize(1880, 100)
    .setLineHeight(72)
    .setColor(0)
    .setFont(helpFont)
    .setText(helpText)
    .hideScrollbar()
    .moveTo(tabLabel)
    ;
    

    
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
      radioObj.addItem(defaultStr, i + 1); // i + 1 for sending to server float
      cp5.getController(defaultStr).setImages(defaultImgs[i], activeImgs[i], activeImgs[i]);
  }
  
     
}

