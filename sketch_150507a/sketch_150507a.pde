// Think of this as main. This file contains the functions "setup()"
// and "draw()". These functions will call the public methods in the other
// files. This reduces clutter and is easier to work with it.


import controlP5.*;

ControlP5 cp5;

color tabBackground         = color(191, 48, 48);  // Red, no option picked
color tabBackgroundActive   = color(227, 111, 30); // Orange, active tab
color tabBackgroundComplete = color(33, 120, 33);  // Green, option picked // old: 48, 191, 48

color tabBackgroundSelect         = color(191, 48, 48);
color tabBackgroundActiveSelect   = color(227, 151, 70);
color tabBackgroundCompleteSelect = color(33, 150, 63);

int tabFontSizeSmall = 25;

PFont tabFont;

color windowBackground      = color(255);


void setup() {
  
  //initialize();
  
   tabFont = createFont("arial",25);
   
  size(1000, 700);
  noStroke();
  
  cp5 = new ControlP5(this); 
  
  cp5.addButton("Ancestry")
     .setPosition(100,200)
     .setSize(200, 200)
     //.setLabel("<")
     .setColorBackground(tabBackgroundActive)
     .setColorActive(tabBackgroundActiveSelect)
     .setColorForeground(tabBackgroundActiveSelect)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSizeSmall)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ; 
  cp5.addButton("Race")
     .setPosition(400,200)
     .setSize(200, 200)
     //.setLabel("<")
     .setColorBackground(tabBackgroundActive)
     .setColorActive(tabBackgroundActiveSelect)
     .setColorForeground(tabBackgroundActiveSelect)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSizeSmall)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ; 
  cp5.addButton("Hispanic")
     .setPosition(700,200)
     .setSize(200, 200)
     //.setLabel("<")
     .setColorBackground(tabBackgroundActive)
     .setColorActive(tabBackgroundActiveSelect)
     .setColorForeground(tabBackgroundActiveSelect)
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSizeSmall)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ; 
  
}

void draw() {
  
  background(windowBackground);
  
}




public void Ancestry(int theValue) {
  
  cp5.getController("Ancestry").hide();
  
  cp5.getController("Race").show();
  
  cp5.getController("Hispanic").show();

  cp5.getController("Race").setPosition(700,100);
  
  cp5.getController("Hispanic").setPosition(700,400);
  
}


public void Race(int theValue) {
  
  fill(100);
  
  rect(30, 20, 55, 55);
  
  cp5.getController("Ancestry").show();
  
  cp5.getController("Race").hide();
  
  cp5.getController("Hispanic").show();

  cp5.getController("Ancestry").setPosition(700,100);
  
  cp5.getController("Hispanic").setPosition(700,400);

  
  
}


public void Hispanic(int theValue) {
 
 
  cp5.getController("Ancestry").show();
  
  cp5.getController("Race").show();
  
  cp5.getController("Hispanic").hide();

  cp5.getController("Ancestry").setPosition(700,100);
  
  cp5.getController("Race").setPosition(700,400);
  
}
