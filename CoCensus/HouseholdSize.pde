
Textarea titleTextArea2, helpTextArea2;


// Action handler
void HouseHandler(int a) { // change name to be the same as fileName + Handler, in this case HouseHandler since fileName is "House"
  // Change these variables for each unique tab//////////////////////////////////////////////
  int tabIndex = 1; // this is where we are storing the result of this tab into, should be unique for each tab

  String finalStr[] = new String[] {
    "One", // Stored result values to be stored into resultStr  
    "Two", 
    "Three", 
    "Four", 
    "Five", 
    "6 or more"
  }; 
  println("House: radio Button event: "+a);  // if you really want you can change the name of the tab

  ///////////////////////////////////////////////////////////////////////////////////////////

  int index = a - 1; // subtracting one for array indexing
  if (a < 0) {
    resultStr[tabIndex] = ""; // reset resultStr
    
    householdSizeAnswer.setText("");
    cp5.getTab("Household Size").setColorBackground(tabBackground).setColorActive(tabBackgroundSelect);
  } 
  else {
    resultStr[tabIndex] = finalStr[index];
    resultFloat[tabIndex] = a;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);
    
    householdSizeAnswer.setText(householdSizeArray[index]);
    cp5.getTab("Household Size").setColorBackground(tabBackgroundComplete).setColorActive(tabBackgroundComplete);
  }

  // changes answered tab green
  //cp5.getTab("Household Size")
  //   .setColorBackground(tabBackgroundComplete);
  //   .setColorActive(tabBackground)
  //   .setColorForeground(tabBackground).update();

  helpTextArea2.setColorBackground(windowBackground);
  titleTextArea2.setColorBackground(windowBackground);
  
  //householdSizeAnswer.setText(
}

// Household Size button display
public void householdSize() {
  // Only need to change these variables//////////////////////////////////////////////////////
  int numImg = 6;  // number of images/buttons
  String tabLabel = "Household Size"; // name of tab/screen that we want to attach this to
  String fileName = "House"; // name of the file name, ex. House-1.png, House-2.png and Active-House-1.png, Active-House-2.png
  String fileType = ".png"; // filetype extension

  String titleText = tabLabel;
  String helpText = "How many people, including yourself, live in your household?";
  // Formatting vars /////////////////////////////////////////////////////////
  int leftIndent = 20;
  int topIndent = 120;
  int numCols = 3;
  int horizSpacing = 50;
  int vertSpacing = 50;
  // Temp vars ////////////////////////////
  int i = 0;
  String activeStr, defaultStr;
  //resultStr[tabIndex] = "";  // initializing
  PImage[] activeImgs = new PImage[numImg];
  PImage[] defaultImgs  = new PImage[numImg];

  for (i = 0; i < numImg; i++) {    
    activeStr = "Active-" + fileName + "-" + new Integer(i+1).toString() + fileType;
    defaultStr = fileName + "-" + new Integer(i+1).toString() + fileType;  
    activeImgs [i] = loadImage(activeStr);
    defaultImgs[i] = loadImage(defaultStr);
  }

  //Textarea titleTextArea, helpTextArea;
  titleTextArea2 = cp5.addTextarea(fileName + "Title")
    .setPosition(leftIndent, 20)
      .setSize(width-80, 100)
        .setLineHeight(72)
          .setColor(0)
            .setFont(titleFont)
              .setText(titleText)
                .hideScrollbar()
                  .moveTo(tabLabel)
                  .disableColorBackground()
                    ;
  helpTextArea2 = cp5.addTextarea(fileName + "HelpText")
    .setPosition(leftIndent + (numCols *(defaultImgs[0].width + horizSpacing)), topIndent)
      .setSize(width-(leftIndent + (numCols *(defaultImgs[0].width + horizSpacing))), height - (height - 900) - topIndent)
        .setLineHeight(72)
          .setColor(0)
            .setFont(helpFont)
              .setText(helpText)
                .hideScrollbar()
                  .moveTo(tabLabel)
                  .disableColorBackground()
                    ;


  RadioButton radioObj = cp5.addRadioButton(fileName+"Handler")
    .setPosition(leftIndent, topIndent)
      .setSize(defaultImgs[0].width, defaultImgs[0].height)
        .setItemsPerRow(numCols)
          .setSpacingColumn(horizSpacing)
            .setSpacingRow(vertSpacing)
              .moveTo(tabLabel)
                ;
  for (i = 0; i < numImg; i++) {
    defaultStr = fileName + "-" + new Integer(i+1).toString();
    radioObj.addItem(defaultStr, i + 1); // i + 1 for sending to server float
    cp5.getController(defaultStr).setImages(defaultImgs[i], activeImgs[i], activeImgs[i]);
  }
}

