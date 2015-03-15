// This file will be used to set up containers, objects, buttons, tabs, fonts, etc.
// This code will be called only once, in the beginning of running the program,
// to initialize the user interface. Most globals are initialized here as well.

// Imports

import controlP5.*;

// Globals

// Result string
String [] resultStr;

// ControlP5
ControlP5 cp5; // ControlP5 object

// Colors
color tabBackground         = color(191, 48, 48);  // Red, no option picked
color tabBackgroundActive   = color(227, 111, 30); // Orange, active tab
color tabBackgroundComplete = color(48, 191, 48);  // Green, option picked
color backgroundColor       = color(255);          // White background

// Sizes
int tabWidth      = 380;
int tabWidthSmall = 190;
int tabHeight     = 100;

int tabFontSize      = 40;
int tabFontSizeSmall = 25;

// Positions
int tabPositionY = 900;

// Fonts 
// Note: Fonts need to be loaded within functions
PFont tabFont;

// Image spacing

int leftIndent = 20;
int topIndent = 20;
int imageSpacing = 10;
int numCols = 3;

// Image variables
  PImage[] activeHouseImgs;
  PImage[] defaultHouseImgs;
  


// Call this method once from main setup (CoCensus).
// This method will call other methods in this file to
// to finish setup.
public void initialize() {
  
  size(1920, 1080);
  noStroke();
  
  cp5 = new ControlP5(this); 
  
  background(backgroundColor);
 
 // -------------------------- //
  
  tabs();
  
}

// setup tabs
public void tabs() {
  
  tabFont = loadFont("Arial-BoldMT-48.vlw");
  
  fill(0, 0, 0, 127);
  rect(0, 910, 1920, 100);

  cp5.getTab("default")
       .remove();
       
  cp5.addTab("Start")
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     .setColorActive(tabBackgroundActive)
     .setColorForeground(tabBackgroundActive) 
     .activateEvent(true)
     .setWidth(tabWidthSmall) 
     .setHeight(tabHeight)
     .setId(1)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSizeSmall)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
  cp5.addTab("Household Size")
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     .setColorActive(tabBackgroundActive)
     .setColorForeground(tabBackgroundActive) 
     .activateEvent(true)
     .setWidth(tabWidth) 
     .setHeight(tabHeight)
     .setId(2)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSize)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
  cp5.addTab("House Type")
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     .setColorActive(tabBackgroundActive)
     .setColorForeground(tabBackgroundActive) 
     .activateEvent(true)
     .setWidth(tabWidth) 
     .setHeight(tabHeight)
     .setId(3)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSize)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
  cp5.addTab("Industry")
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     .setColorActive(tabBackgroundActive)
     .setColorForeground(tabBackgroundActive) 
     .activateEvent(true)
     .setWidth(tabWidth) 
     .setHeight(tabHeight)
     .setId(4)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSize)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
  cp5.addTab("Heritage")
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     .setColorActive(tabBackgroundActive)
     .setColorForeground(tabBackgroundActive) 
     .activateEvent(true)
     .setWidth(tabWidth) 
     .setHeight(tabHeight)
     .setId(5)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSize)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
  cp5.addTab("Finish")
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     .setColorActive(tabBackgroundActive)
     .setColorForeground(tabBackgroundActive) 
     .activateEvent(true)
     .setWidth(tabWidthSmall) 
     .setHeight(tabHeight)
     .setId(6)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSizeSmall)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ;
     
     
  cp5.window().setPositionOfTabs(0,tabPositionY);
  ////////////
  resultStr = new String[] {"", "", "", "", "", "", ""};
  activeHouseImgs = new PImage[] {loadImage("Active-House-1.png"),loadImage("Active-House-2.png"),loadImage("Active-House-3.png"),loadImage("Active-House-4.png"),loadImage("Active-House-5.png"),loadImage("Active-House-6.png")};
  defaultHouseImgs  = new PImage[] {loadImage("House-1.png"),loadImage("House-2.png"),loadImage("House-3.png"),loadImage("House-4.png"),loadImage("House-5.png"),loadImage("House-6.png")};
  //houseImgs = new PImage[] {loadImage("House-1.png"),loadImage("House-2.png"),loadImage("House-3.png"),loadImage("House-4.png"),loadImage("House-5.png"),loadImage("House-6.png")};
  
    String buttonName;
    for(int i = 0; i < defaultHouseImgs.length; i++){      
      
      buttonName = "house-" + new Integer(i+1).toString(); 
      cp5.addButton(buttonName)
       .setPosition(leftIndent + (i % numCols)*(defaultHouseImgs[i].width + imageSpacing), topIndent + (i / numCols) * (defaultHouseImgs[i].height + imageSpacing))
       .setImage(defaultHouseImgs[i])
       .setSize(defaultHouseImgs[i])
       .setId(10);
      ;
     cp5.getController(buttonName).moveTo("Household Size");
    }
     
     
     
     
   /*cp5.addButton("play1")
     .setPosition(25,160)
     .setImage(imgs[2])
     .setSize(imgs[2]);
     ;     
   cp5.getController("play1").moveTo("Industry");
     */
  
}



/*void keyPressed() {
  switch(key) {
    case('0'): r.deactivateAll(); break;
    case('1'): r.activate(0); break;
    case('2'): r.activate(1); break;
    case('3'): r.activate(2); break;
    case('4'): r.activate(3); break;
    case('5'): r.activate(4); break;
  }
  
}*/
/*void radioButton(int a) {
  println("a radio Button event: "+a);
}*/
