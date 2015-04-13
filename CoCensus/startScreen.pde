

public void startScreen() {
  
  
  // set font
  startFont = loadFont("Arial-BoldMT-78.vlw");
  
  cp5.addButton("start")
     .setPosition(500,500)
     .setSize(200, 200)
     .setLabel("START")
     .getCaptionLabel()
     .setFont(startFont)
     .setSize(tabFontSizeBig)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ; 

  cp5.getController("start").moveTo("global");
  
}
