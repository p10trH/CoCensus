// This file will be used to set up containers, objects, buttons, tabs, fonts, etc.
// This code will be called only once, in the beginning of running the program,
// to initialize the user interface. Most globals are initialized here as well.

// Imports

import controlP5.*;

// Globals

// ControlP5
ControlP5 cp5; // ControlP5 object

ControlWindow controlWindow; // adding graphics to tabs
Canvas cc;


// Colors
color tabBackground         = color(191, 48, 48);  // Red, no option picked
color tabBackgroundActive   = color(227, 111, 30); // Orange, active tab
color tabBackgroundComplete = color(48, 191, 48);  // Green, option picked
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





// Call this method once from main setup (CoCensus).
// This method will call other methods in this file to
// to finish setup.
public void initialize() {
  
  size(1920, 1080);
  noStroke();
  
  cp5 = new ControlP5(this);
  
  background(windowBackground);
 
 // -------------------------- //
  
  tabs();
  //householdSize();
  //houseType();
  //industry();
  //heritage();
  
}

// setup tabs
public void tabs() {
  
  // set font
  tabFont = loadFont("Arial-BoldMT-48.vlw");
  
  cc = new MyCanvas();
  cc.pre(); // use post() to draw on top of existing controllers, pre() otherwise
  cp5.addCanvas(cc); 
 
  // remove default tab
  cp5.getTab("default")
       .remove();
       
  // add tabs, correspond to questions     
  //cp5.addTab("Start") 
  //   .setColorBackground(tabBackground)
  //   .setColorLabel(color(255))
  //   .setColorActive(tabBackgroundActive)
  //   .setColorForeground(tabBackgroundActive) 
  //   .activateEvent(true)
  //   .setWidth(tabWidthSmall) 
  //   .setHeight(tabHeight)
  //   .setId(1)
  //   .getCaptionLabel()
  //   .setFont(tabFont)
  //   .setSize(tabFontSizeSmall)
  //   .align(ControlP5.CENTER, ControlP5.CENTER)
  //   ;
     
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
     
  // set tabs position   
  
  cp5.window().setPositionOfTabs(tabWidthSmall + 4,tabPositionY);
  
  // back and forward buttons, shift through tabs
  
  cp5.addButton("left")
     .setPosition(0,tabPositionY)
     .setSize(tabWidthSmall, tabHeight)
     .setLabel("<")
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSizeBig)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ; 
     
  cp5.addButton("right")
     .setPosition(width - tabWidthSmall - 1,tabPositionY)
     .setSize(tabWidthSmall + 1, tabHeight)
     .setLabel(">")
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSizeBig)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ; 
     
  cp5.getController("left").moveTo("global");
  cp5.getController("right").moveTo("global");
 
  
}


// shadow canvas
class MyCanvas extends Canvas {

  //int y;

  public void setup(PApplet theApplet) {
    //y = 200;
  }  

  public void draw(PApplet p) {
    
    for (int i = 20; i <= 45; i++) {
      p.fill(0, 0, 0, 10);
    
      p.rect(0, tabPositionY + 10, width, tabHeight - 50);
      p.rect(0, tabPositionY + tabHeight - 40, width, (tabHeight / 50) * i); 
      
      p.fill(255, 255, 255, 3);
      p.rect(tabWidthSmall, tabPositionY + 10, 4, tabHeight - 50);
      p.rect(tabWidthSmall, tabPositionY + tabHeight - 40, 4, (tabHeight / 50) * i); 
      
      p.rect(width - tabWidthSmall - 5, tabPositionY + 10, 4, tabHeight - 50);
      p.rect(width - tabWidthSmall - 5, tabPositionY + tabHeight - 40, 4, (tabHeight / 50) * i); 
      
      //p.rect(tabWidthSmall + 3, tabPositionY + 10, 1, tabHeight - 50);
      //p.rect(tabWidthSmall + 3, tabPositionY + tabHeight - 40, 1, (tabHeight / 50) * i); 
      

      
    }
  }
}
