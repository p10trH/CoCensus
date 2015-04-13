
PImage tabImg;

int currentTab = 2;

// setup tabs
public void tabs() {
  
  // set font
  tabFont = loadFont("Arial-BoldMT-78.vlw");
  
  cc = new MyCanvas();
  cc.pre(); // use post() to draw on top of existing controllers, pre() otherwise
  cp5.addCanvas(cc); 
 
  // remove default tab
  cp5.getTab("default")
       .remove();
       
  // add tabs, correspond to questions     
  cp5.addTab("Household Size")
     .setColorBackground(tabBackground)
     .setColorLabel(color(255))
     .setColorActive(tabBackgroundActive)
     .setColorForeground(tabBackgroundActive) 
     .activateEvent(true)
     .setActive(true)
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

public void left(int theValue) {
  
  if (currentTab > 2 && currentTab <= 5) {
    
    currentTab--;
  
    if (cp5.getTab("Household Size").getId() == currentTab){
       cp5.getTab("Household Size").bringToFront();
    }
    else if (cp5.getTab("House Type").getId() == currentTab){
       cp5.getTab("House Type").bringToFront();
    }
    else if (cp5.getTab("Industry").getId() == currentTab){
       cp5.getTab("Industry").bringToFront();
    }
    else if (cp5.getTab("Heritage").getId() == currentTab){
       cp5.getTab("Heritage").bringToFront();
    }
    
  }

  
}

public void right(int theValue) {
  
  if (currentTab >= 2 && currentTab < 5) {
    
    currentTab++;
  
    if (cp5.getTab("Household Size").getId() == currentTab){
       cp5.getTab("Household Size").bringToFront();
    }
    else if (cp5.getTab("House Type").getId() == currentTab){
       cp5.getTab("House Type").bringToFront();
    }
    else if (cp5.getTab("Industry").getId() == currentTab){
       cp5.getTab("Industry").bringToFront();
    }
    else if (cp5.getTab("Heritage").getId() == currentTab){
       cp5.getTab("Heritage").bringToFront();
    }
    
  }

  
}



// shadow canvas
class MyCanvas extends Canvas {


  public void setup(PApplet theApplet) {

    tabImg = loadImage("navigation.png");
    
  }  

  public void draw(PApplet p) {
    
    p.image(tabImg, 0, tabPositionY);
    
    /*
    for (int i = 20; i <= 45; i++) {
      p.fill(0, 0, 0, 10);
    
      p.rect(0, tabPositionY + 10, width, tabHeight - 50);
      p.rect(0, tabPositionY + tabHeight - 40, width, (tabHeight / 50) * i); 
      
      p.fill(255, 255, 255, 3);
      p.rect(tabWidthSmall, tabPositionY + 10, 4, tabHeight - 50);
      p.rect(tabWidthSmall, tabPositionY + tabHeight - 40, 4, (tabHeight / 50) * i); 
      
      p.rect(width - tabWidthSmall - 5, tabPositionY + 10, 4, tabHeight - 50);
      p.rect(width - tabWidthSmall - 5, tabPositionY + tabHeight - 40, 4, (tabHeight / 50) * i); 
      
      p.rect(tabWidthSmall + tabWidth + 7, tabPositionY + 10, 1, tabHeight - 50);
      p.rect(tabWidthSmall + tabWidth + 7, tabPositionY + tabHeight - 40, 1, (tabHeight / 50) * i); 
      
      p.rect(tabWidthSmall + 2 * tabWidth + 11, tabPositionY + 10, 1, tabHeight - 50);
      p.rect(tabWidthSmall + 2 * tabWidth + 11, tabPositionY + tabHeight - 40, 1, (tabHeight / 50) * i); 
      
      p.rect(tabWidthSmall + 3 * tabWidth + 15, tabPositionY + 10, 1, tabHeight - 50);
      p.rect(tabWidthSmall + 3 * tabWidth + 15, tabPositionY + tabHeight - 40, 1, (tabHeight / 50) * i);   
    }
    */
  }
}
