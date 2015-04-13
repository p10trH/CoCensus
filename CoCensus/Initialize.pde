// This file will be used to set up containers, objects, buttons, tabs, fonts, etc.
// This code will be called only once, in the beginning of running the program,
// to initialize the user interface. Most globals are initialized here as well.

// Imports

import controlP5.*;

// Globals

// Result string
String [] resultStr;
// Send string
float [] resultFloat;

// ControlP5
ControlP5 cp5; // ControlP5 object // used for tabs
ControlP5 cp6; // used for start screen
ControlP5 cp7; // for welcome screen

ControlWindow controlWindow; // adding graphics to tabs
Canvas cc;


// Colors
color tabBackground         = color(191, 48, 48);  // Red, no option picked
color tabBackgroundActive   = color(227, 111, 30); // Orange, active tab
color tabBackgroundComplete = color(33, 120, 33);  // Green, option picked // old: 48, 191, 48

color windowBackground      = color(255);          // White 


// Sizes
int tabWidth      = 426;
int tabWidthSmall = 96;
int tabHeight     = 100;

int tabFontSize      = 40;
int tabFontSizeSmall = 25;
int tabFontSizeBig   = 50;

// Positions
int tabPositionY = 900;

// Fonts 
// Note: Fonts need to be loaded within functions
PFont tabFont;
PFont startFont;

// Some other fonts for pages

PFont titleFont = createFont("Arial",72,true); // use true/false for smooth/no-smooth
PFont helpFont = createFont("Arial",55,true); // use true/false for smooth/no-smooth


// Call this method once from main setup (CoCensus).
// This method will call other methods in this file to
// to finish setup.
public void initialize() {
  
//////////// Result string "initialization"
    resultStr = new String[12];      // result string storing answers as strings
    resultFloat   = new float[12];   // float array storing answers as floats to send to the server (as the original CoCensus program) 

  // sending string from oroginal CoCensus program...Just the kiosk string for now, there's a second "logString" that is similar
  /*String kioskString = "http://192.168.1.10//kiosk.php?NEW
     &ancestry="        +ancFloatVal +    // 0  - Ancestry result
    "&hhSizeFloatVal="  +hhSizeFloatVal+  // 1  - Household size result
    "&indFloatVal="     +indFloatVal+     // 2  - Industry result
    "&houseFloatVal="   +houseFloatVal+   // 3  - House type result
    "&red="             +r+               // 4  - Avatar
    "&green="           +g+               // 5  - Avatar
    "&blue="            +b+               // 6  - Avatar
    "&tagID="           +tagString+       // 7  - RFID tag number
    "&type="            +typeString+      // 8  - Celebrity name or custom
    "&mouth="           +mouthInt+        // 9  - Avatar
    "&eyes="            +eyesInt+         // 10 - Avatar
    "&nose="            +noseInt          // 11 - Avatar
    ;*/
    
  size(1920, 1080);
  noStroke();
  
  cp5 = new ControlP5(this); 
  cp6 = new ControlP5(this); 
  
  background(windowBackground);
 
 // -------------------------- //
  
  tabs();
  householdSize();
  houseType();
  industry();
  //heritage();
  
  startScreen();
  welcome();
  
  cp5.hide();
  cp7.hide();
  
  
}
