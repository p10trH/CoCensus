
Textarea titleTextArea4, helpTextArea4;

String ancestryArray[] = new String[] {
    "                  American",
    "                     Dutch",
    "                 Hungarian",
    "                  Romanian",
    "                   Swedish",
    "                      Arab",
    "                   English",
    "                     Irish",
    "                   Russian",
    "                     Swiss",
    "                  Austrian",
    "                   Finnish",
    "                   Italian",
    "              Scotch-Irish",
    "                  Ukranian",
    "                   Belgian",
    "                    French",
    "                Lithuanian",
    "                  Scottish",
    "                     Welsh",
    "                  Canadian",
    "           French Canadian",
    "                 Norwegian",
    "                    Slovak",
    "               West Indian",
    "                     Czech",
    "                    German",
    "                    Polish",
    "        Subsaharan African",
    "               Yugoslavian",
    "                    Danish",
    "                     Greek",
    "                Portuguese"
    
  };   
  String raceArray[] = new String[] {
    
    "                     White",
    "                   Chinese",
    "              Asian Indian",
    "                   Laotian",
    "                Polynesian",
    "   Black, African American",
    "                  Japanese",
    "                  Filipino",
    "                     Hmong",
    "                Melanesian",
    "           American Indian",
    "                    Korean",
    "                 Cambodian",
    "               Other Asian",
    "               Micronesian",
    "             Alaska Native",
    "                Vietnamese",
    "                      Thai"
  };  
    String hispanicArray[] = new String[] {
    "   Mexican, Mexican American",
    "                Puerto Rican",
    "                     Cuban",
    "Hispanic, Latino, Spanish other"
  };  

int numAncestry = 33;
String[] allAncestries = {
  "American","Dutch","Hungarian","Romanian","Swedish","Arab","English","Irish","Russian","Swiss","Austrian","Finnish","Italian","Scotch-Irish","Ukranian","Belgian","French","Lithuanian","Scottish","Welsh","Canadian","French Canadian","Norwegian","Slovak","West Indian","Czech","German","Polish","Subsaharan African","Yugoslavian","Danish","Greek","Portuguese"
};
int numRaces = 18;
String[] allRaces = {
 "White","Chinese","Asian Indian","Laotian","Polynesian","Black, African American","Japanese","Filipino","Hmong","Melanesian","American Indian","Korean","Cambodian","Other Asian","Micronesian","Alaska Native", "Vietnamese", "Thai"
};
int numHisp = 4;
String[] allHispanics = {
  "Mexican, Mexican American","Puerto Rican","Cuban","another Hispanic, Latino, or Spanish origin"
};
  
  
  PFont sfont;
ControlP5 cp9;
// Action handler
/*void HeritageHandler(int a) { // change name to be the same as fileName + Handler, in this case HouseHandler since fileName is "House"
  // Change these variables for each unique tab//////////////////////////////////////////////
  int tabIndex = 0; // this is where we are storing the result of this tab into, should be unique for each tab

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
  
  helpTextArea4.setColorBackground(windowBackground);
  titleTextArea4.setColorBackground(windowBackground);
  
  //householdSizeAnswer.setText(
}*/

RadioButton r;
RadioButton h;
RadioButton a;
// Household Size button display
public void heritage() {
  sfont = loadFont("Verdana-Bold-20.vlw");
  int heritageTabWidth      = 426;
  int heritageTabWidthSmall = 96;
  int heritageTabHeight     = 135;

  int heritageTabFontSize      = 35;
  cp9 = new ControlP5(this); 
  // Only need to change these variables//////////////////////////////////////////////////////
  int numImg = 6;  // number of images/buttons
  String tabLabel = "Heritage"; // name of tab/screen that we want to attach this to
  String fileName = "Heritage"; // name of the file name, ex. House-1.png, House-2.png and Active-House-1.png, Active-House-2.png
  String fileType = ".png"; // filetype extension

  String titleText = tabLabel;
  String raceText = "Do you identify with race?";
  String hispText = "Do you identify with Hispanic, Latino?";
  String ancestryText = "Do you identify with your ancestry?";
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
     .setWidth(heritageTabWidth) 
     .setHeight(heritageTabHeight)
     .setId(10)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(heritageTabFontSize)
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
     .setWidth(heritageTabWidth) 
     .setHeight(heritageTabHeight)
     .setId(11)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(heritageTabFontSize)
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
     .setWidth(heritageTabWidth) 
     .setHeight(heritageTabHeight)
     .setId(12)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(heritageTabFontSize)
     .align(ControlP5.CENTER, ControlP5.CENTER)     
     ;      
     
     
  helpTextArea4 = cp9.addTextarea(fileName + "Race")
    .setPosition(leftIndent + 1300, topIndent)//(numCols *(defaultImgs[0].width + horizSpacing)), topIndent)
      .setSize(width-(leftIndent + 1300), height - (height - 880) - topIndent)//(numCols *(defaultImgs[0].width + horizSpacing))), height - (height - 900) - topIndent)
        .setLineHeight(72)
          .setColor(0)
            .setFont(helpFont)
              .setText(raceText)
                .hideScrollbar()
                  .moveTo("Race")
                  .disableColorBackground()
                    ;
  helpTextArea4 = cp9.addTextarea(fileName + "Hispanic and Latino")
    .setPosition(leftIndent + 1300, topIndent)//(numCols *(defaultImgs[0].width + horizSpacing)), topIndent)
      .setSize(width-(leftIndent + 1300), height - (height - 880) - topIndent)//(numCols *(defaultImgs[0].width + horizSpacing))), height - (height - 900) - topIndent)
        .setLineHeight(72)
          .setColor(0)
            .setFont(helpFont)
              .setText(hispText)
                .hideScrollbar()
                  .moveTo("Hispanic and Latino")
                  .disableColorBackground()
                    ;
  helpTextArea4 = cp9.addTextarea(fileName + "Ancestry")
    .setPosition(leftIndent + 1300, topIndent)//(numCols *(defaultImgs[0].width + horizSpacing)), topIndent)
      .setSize(width-(leftIndent + 1300), height - (height - 880) - topIndent)//(numCols *(defaultImgs[0].width + horizSpacing))), height - (height - 900) - topIndent)
        .setLineHeight(72)
          .setColor(0)
            .setFont(helpFont)
              .setText(ancestryText)
                .hideScrollbar()
                  .moveTo("Ancestry")
                  .disableColorBackground()
                    ;
  r = cp9.addRadioButton("rRadioButton")
         .setPosition(20,160)
         //.setSize(defaultHouseImgs[0].width,defaultHouseImgs[0].height)
         .setItemsPerRow(3)
         .setSpacingColumn(350)
         .setSize(50,50)
         /*.setColorForeground(color(120))
         .setColorActive(color(255))
         .setColorLabel(color(255))*/
         
         .setColorBackground(color(85))
         .setColorForeground(color(33,120,33))
         .setColorActive(color(33,120,33))
         .setColorLabel(color(0))
         /*.addItem("one",1)
         .addItem("two",2)
         .addItem("three",3)
         .addItem("four",4)
         .addItem("five",5)*/
         .moveTo("Race")
         ;
  for (i=0; i<numRaces; i++) {
    r.addItem(allRaces[i], i+1);
  }
  for (Toggle t: r.getItems()) {
    t.captionLabel().toUpperCase(false);
    t.captionLabel().setFont(sfont);
  }  
  h = cp9.addRadioButton("hRadioButton")
         .setPosition(20,160)
         //.setSize(defaultHouseImgs[0].width,defaultHouseImgs[0].height)
         .setItemsPerRow(1)
         .setSpacingColumn(350)
         .setSize(50,50)
         /*.setColorForeground(color(120))
         .setColorActive(color(255))
         .setColorLabel(color(255))*/
         
         .setColorBackground(color(85))
         .setColorForeground(color(33,120,33))
         .setColorActive(color(33,120,33))
         .setColorLabel(color(0))
         /*.addItem("one",1)
         .addItem("two",2)
         .addItem("three",3)
         .addItem("four",4)
         .addItem("five",5)*/
         .moveTo("Hispanic and Latino")
         ;
  for (i=0; i<numHisp; i++) {
    h.addItem(allHispanics[i], i+1);
  }
  for (Toggle t: h.getItems()) {
    t.captionLabel().toUpperCase(false);
    t.captionLabel().setFont(sfont);
  }
  a = cp9.addRadioButton("aRadioButton")
         .setPosition(20,160)
         //.setSize(defaultHouseImgs[0].width,defaultHouseImgs[0].height)
         .setItemsPerRow(3)
         .setSpacingColumn(350)
         .setSize(50,50)
         /*.setColorForeground(color(120))
         .setColorActive(color(255))
         .setColorLabel(color(255))*/
         
         .setColorBackground(color(85))
         .setColorForeground(color(33,120,33))
         .setColorActive(color(33,120,33))
         .setColorLabel(color(0))
         /*.addItem("one",1)
         .addItem("two",2)
         .addItem("three",3)
         .addItem("four",4)
         .addItem("five",5)*/
         .moveTo("Ancestry")
         ;
  for (i=0; i<numAncestry; i++) {
    a.addItem(allAncestries[i], i+1);
  }
  for (Toggle t: a.getItems()) {
    t.captionLabel().toUpperCase(false);
    t.captionLabel().setFont(sfont);
  }
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
void aRadioButton(int num){
  println("Ancestry radio button");
  r.deactivateAll();
  h.deactivateAll();
  int tabIndex = 0; // this is where we are storing the result of this tab into, should be unique for each tab

  println("Heritage: radio Button event: "+a);  // if you really want you can change the name of the tab

  ///////////////////////////////////////////////////////////////////////////////////////////

  int index = num - 1; // subtracting one for array indexing
  if (num < 0) {
    resultStr[tabIndex] = ""; // reset resultStr
    
    heritageAnswer.setText("");
    cp5.getTab("Heritage").setColorBackground(tabBackground).setColorActive(tabBackgroundSelect);
    ////////cp10.hide();
  } 
  else {
    resultStr[tabIndex] = allAncestries[index];
    resultFloat[tabIndex] = num;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);
    
    heritageAnswer.setText(ancestryArray[index]);
    cp5.getTab("Heritage").setColorBackground(tabBackgroundComplete).setColorActive(tabBackgroundComplete);
    ////////cp10.show();
  }

  // changes answered tab green
  
  helpTextArea4.setColorBackground(windowBackground);
  titleTextArea4.setColorBackground(windowBackground);
  
  
  
}
void hRadioButton(int num){
  println("Hispanic radio button");
  r.deactivateAll();
  a.deactivateAll();
  int tabIndex = 0; // this is where we are storing the result of this tab into, should be unique for each tab

  println("Heritage: radio Button event: "+a);  // if you really want you can change the name of the tab

  ///////////////////////////////////////////////////////////////////////////////////////////

  int index = num - 1; // subtracting one for array indexing
  if (num < 0) {
    resultStr[tabIndex] = ""; // reset resultStr
    
    heritageAnswer.setText("");
    cp5.getTab("Heritage").setColorBackground(tabBackground).setColorActive(tabBackgroundSelect);
    ////////cp10.hide();
  } 
  else {
    resultStr[tabIndex] = allHispanics[index];
    resultFloat[tabIndex] = num;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);
    
    heritageAnswer.setText(hispanicArray[index]);
    cp5.getTab("Heritage").setColorBackground(tabBackgroundComplete).setColorActive(tabBackgroundComplete);
    ////////cp10.show();
  }

  // changes answered tab green
  
  helpTextArea4.setColorBackground(windowBackground);
  titleTextArea4.setColorBackground(windowBackground);
}
void rRadioButton(int num){
  println("Race radio button");
  a.deactivateAll();
  h.deactivateAll();
  int tabIndex = 0; // this is where we are storing the result of this tab into, should be unique for each tab

  println("Heritage: radio Button event: "+a);  // if you really want you can change the name of the tab

  ///////////////////////////////////////////////////////////////////////////////////////////

  int index = num - 1; // subtracting one for array indexing
  if (num < 0) {
    resultStr[tabIndex] = ""; // reset resultStr
    
    heritageAnswer.setText("");
    cp5.getTab("Heritage").setColorBackground(tabBackground).setColorActive(tabBackgroundSelect);
    ////////cp10.hide();
  } 
  else {
    resultStr[tabIndex] = allRaces[index];
    resultFloat[tabIndex] = num;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);
    
    heritageAnswer.setText(raceArray[index]);
    cp5.getTab("Heritage").setColorBackground(tabBackgroundComplete).setColorActive(tabBackgroundComplete);
    ////////cp10.show();
  }

  // changes answered tab green
  
  helpTextArea4.setColorBackground(windowBackground);
  titleTextArea4.setColorBackground(windowBackground);
}

