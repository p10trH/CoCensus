
PImage tabImg;

// setup tabs
public void tabs() {
  
  Group tabsGroup = cp5.addGroup("tabsGroup")
                .setPosition(0,0)
                //.setBackgroundHeight(100)
                .setHeight(1080)
                .setWidth(1920)
                .setBackgroundColor(windowBackground)
                .setBarHeight(0).hideBar()
                ;
  
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
     .setGroup(tabsGroup)
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
     .setGroup(tabsGroup)
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
     .setGroup(tabsGroup)
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
     .setGroup(tabsGroup)
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
