

public void startScreen() {
  
  
  // set font
  startFont = loadFont("Arial-BoldMT-78.vlw");
  
  Group g1 = cp5.addGroup("g1")
                .setPosition(0,0)
                //.setBackgroundHeight(100)
                .setHeight(100)
                .setWidth(100)
                .setBackgroundColor(windowBackground)
                .setBarHeight(0).hideBar()
                ;
  
  cp5.addButton("start")
     .setPosition(500,500)
     .setImages(loadImage("circle.png"), loadImage("circle2.png"), loadImage("circle3.png"))
     //.setSize(200, 200)
     .updateSize()
     .setLabel("START")
     .getCaptionLabel()
     .setFont(startFont)
     .setSize(tabFontSizeBig)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ; 

  cp5.getController("start").moveTo("global");
  
}
