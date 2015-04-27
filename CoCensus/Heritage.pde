
Textarea titleTextArea4, helpTextArea4;

String heritageArray[] = new String[] {
    "    detached one-family house",
    "     attached one-family house", 
    "          2 apartment building", 
    "        3-4 apartment building", 
    "        5-9 apartment building", 
    "      10-19 apartment building", 
    "      20-49 apartment building", 
    "  50 or more apartment building", 
    " boat, RV, van, mobile, or other"
  };   
ControlP5 cp9;
// Action handler
void HeritageHandler(int a) { // change name to be the same as fileName + Handler, in this case HouseHandler since fileName is "House"
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
  println("Heritage: radio Button event: "+a);  // if you really want you can change the name of the tab

  ///////////////////////////////////////////////////////////////////////////////////////////

  int index = a - 1; // subtracting one for array indexing
  if (a < 0) {
    resultStr[tabIndex] = ""; // reset resultStr
    
    heritageAnswer.setText("");
    cp5.getTab("Heritage").setColorBackground(tabBackground).setColorActive(tabBackgroundSelect);
  } 
  else {
    resultStr[tabIndex] = finalStr[index];
    resultFloat[tabIndex] = a;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);
    
    heritageAnswer.setText(heritageArray[index]);
    cp5.getTab("Heritage").setColorBackground(tabBackgroundComplete).setColorActive(tabBackgroundComplete);
  }

  // changes answered tab green
  //cp5.getTab("Household Size")
  //   .setColorBackground(tabBackgroundComplete);
  //   .setColorActive(tabBackground)
  //   .setColorForeground(tabBackground).update();

  helpTextArea4.setColorBackground(windowBackground);
  titleTextArea4.setColorBackground(windowBackground);
  
  //householdSizeAnswer.setText(
}

// Household Size button display
public void heritage() {
  cp9 = new ControlP5(this); 
  // Only need to change these variables//////////////////////////////////////////////////////
  int numImg = 6;  // number of images/buttons
  String tabLabel = "Heritage"; // name of tab/screen that we want to attach this to
  String fileName = "Heritage"; // name of the file name, ex. House-1.png, House-2.png and Active-House-1.png, Active-House-2.png
  String fileType = ".png"; // filetype extension

  String titleText = tabLabel;
  String raceText = "How many people, including yourself, live in your household?";
  String hispText = "hispanic and latino text";
  String ancestryText = "ancestry text";
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

  /*for (i = 0; i < numImg; i++) {    
    activeStr = "Active-" + fileName + "-" + new Integer(i+1).toString() + fileType;
    defaultStr = fileName + "-" + new Integer(i+1).toString() + fileType;  
    activeImgs [i] = loadImage(activeStr);
    defaultImgs[i] = loadImage(defaultStr);
  }*/

  //Textarea titleTextArea, helpTextArea;
  titleTextArea4 = cp5.addTextarea(fileName + "Title")
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
  /*helpTextArea4 = cp9.addTextarea(fileName + "HelpText1")
    .setPosition(leftIndent + 800, topIndent)//(numCols *(defaultImgs[0].width + horizSpacing)), topIndent)
      .setSize(width-(leftIndent + 800), height - (height - 900) - topIndent)//(numCols *(defaultImgs[0].width + horizSpacing))), height - (height - 900) - topIndent)
        .setLineHeight(72)
          .setColor(0)
            .setFont(helpFont)
              .setText("blah") //helpText
                .hideScrollbar()
                //  .moveTo(tabLabel)
                  .disableColorBackground()
                    ;*/

  cp9.getTab("default")
       //.remove();
       .hide();
       
  cp9.addTab("Race")
     //.setUpdate(true) 
     //.setArrayValue(tab1) 
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     //.setColorActive(tabBackgroundActive)
     .setColorActive(tabBackgroundSelect)
     .setColorForeground(tabBackgroundActive)
     //.setColorForeground(tabBackground)
     //.activateEvent(true)
     //.setActive(true)
     .setWidth(tabWidth) 
     .setHeight(tabHeight)
     .setId(10)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSize)
     .align(ControlP5.CENTER, ControlP5.CENTER)     
     ;     
  cp9.addTab("Hispanic and Latino")
     //.setUpdate(true) 
     //.setArrayValue(tab1) 
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     //.setColorActive(tabBackgroundActive)
     .setColorActive(tabBackgroundSelect)
     .setColorForeground(tabBackgroundActive)
     //.setColorForeground(tabBackground)
     //.activateEvent(true)
     //.setActive(true)
     .setWidth(tabWidth) 
     .setHeight(tabHeight)
     .setId(11)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSize)
     .align(ControlP5.CENTER, ControlP5.CENTER)     
     ; 
  cp9.addTab("Ancestry")
     //.setUpdate(true) 
     //.setArrayValue(tab1) 
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     //.setColorActive(tabBackgroundActive)
     .setColorActive(tabBackgroundSelect)
     .setColorForeground(tabBackgroundActive)
     //.setColorForeground(tabBackground)
     //.activateEvent(true)
     //.setActive(true)
     .setWidth(tabWidth) 
     .setHeight(tabHeight)
     .setId(12)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSize)
     .align(ControlP5.CENTER, ControlP5.CENTER)     
     ;      
     
     
  helpTextArea4 = cp9.addTextarea(fileName + "Race")
    .setPosition(leftIndent + 800, topIndent)//(numCols *(defaultImgs[0].width + horizSpacing)), topIndent)
      .setSize(width-(leftIndent + 800), height - (height - 880) - topIndent)//(numCols *(defaultImgs[0].width + horizSpacing))), height - (height - 900) - topIndent)
        .setLineHeight(72)
          .setColor(0)
            .setFont(helpFont)
              .setText(raceText)
                .hideScrollbar()
                  .moveTo("Race")
                  .disableColorBackground()
                    ;
  helpTextArea4 = cp9.addTextarea(fileName + "Hispanic and Latino")
    .setPosition(leftIndent + 800, topIndent)//(numCols *(defaultImgs[0].width + horizSpacing)), topIndent)
      .setSize(width-(leftIndent + 800), height - (height - 880) - topIndent)//(numCols *(defaultImgs[0].width + horizSpacing))), height - (height - 900) - topIndent)
        .setLineHeight(72)
          .setColor(0)
            .setFont(helpFont)
              .setText(hispText)
                .hideScrollbar()
                  .moveTo("Hispanic and Latino")
                  .disableColorBackground()
                    ;
  helpTextArea4 = cp9.addTextarea(fileName + "Ancestry")
    .setPosition(leftIndent + 800, topIndent)//(numCols *(defaultImgs[0].width + horizSpacing)), topIndent)
      .setSize(width-(leftIndent + 800), height - (height - 880) - topIndent)//(numCols *(defaultImgs[0].width + horizSpacing))), height - (height - 900) - topIndent)
        .setLineHeight(72)
          .setColor(0)
            .setFont(helpFont)
              .setText(ancestryText)
                .hideScrollbar()
                  .moveTo("Ancestry")
                  .disableColorBackground()
                    ;
/*

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
  }*/
}

