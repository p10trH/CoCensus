



public void heritageAlt() {
  
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
     
  cp5.getController("Ancestry").moveTo("Heritage");
  cp5.getController("Race").moveTo("Heritage");
  cp5.getController("Hispanic").moveTo("Heritage");
  
  
}
