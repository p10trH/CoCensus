// setup globals, add fonts, objects, initialize

// Globals

// Colors
color tabBackground         = color(191, 48, 48);  // Red, no option picked
color tabBackgroundActive   = color(227, 111, 30); // Orange, active tab
color tabBackgroundComplete = color(48, 191, 48);  // Green, option picked

// Sizes
int tabWidth      = 382;
int tabWidthSmall = 191;
int tabHeight     = 100;

int tabFontSize      = 36;
int tabFontSizeSmall = 24;


// Fonts, Note: Fonts need to be loaded within functions
PFont tabFont;




// Call this method once from main setup (CoCensus).
// This method will call other methods in this file to
// to finish setup.
public void initialize() {
  
  size(1920, 1080);
  noStroke();
  background(color(255));
 
  
  tabs();
  
}

// setup tabs
public void tabs() {
  
  tabFont = loadFont("Arial-BoldMT-48.vlw");

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
     
     
  
}