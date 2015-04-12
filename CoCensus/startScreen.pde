

public void startScreen() {
  
  cp5.addButton("start")
     .setPosition(200,200)
     .setSize(tabWidthSmall + 1, tabHeight)
     .setLabel("START")
     .getCaptionLabel()
     .setFont(tabFont)
     .setSize(tabFontSizeBig)
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ; 

  cp5.getController("start").moveTo("global");
  
}
