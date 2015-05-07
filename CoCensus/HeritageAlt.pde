
Textarea titleTextArea5, helpTextArea5;


public void heritageAlt() {
  
  String fileName = "Heritage";
  
  String titleText = "Heritage"; 
  String helpText = "Choose from what the census calls:";
   
   
  helpTextArea5 = cp5.addTextarea(fileName + "HelpText")
    .setPosition(20, 20)
      .setSize(1880, 100)
        .setLineHeight(72)
          .setColor(0)
            .setFont(helpFont)
              .setText(helpText)
                .hideScrollbar()
                  .moveTo(fileName)
                  .disableColorBackground()
                    ; 
   
   
   //480
  cp5.addButton("Ancestry")
     .setPosition(330,330)
     .setSize(300, 300)
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
     .setPosition(810,330)
     .setSize(300, 300)
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
     .setPosition(1290,330)
     .setSize(300, 300)
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

public void Ancestry(int theValue) {
  
  //cp5.getController("Ancestry").hide();
  
  cp5.getController("Ancestry").setPosition(980,240);
  
  cp5.getController("Ancestry").setSize(600, 600);
  
  cp5.getController("Race").show();
  
  cp5.getController("Hispanic").show();

  cp5.getController("Race").setPosition(490,210); //640
  
  cp5.getController("Hispanic").setPosition(490,570);
  
}


public void Race(int theValue) {
  
  //fill(100);
  //rect(30, 20, 55, 55);
  
  cp5.getController("Ancestry").show();
  
  cp5.getController("Race").hide();
  
  cp5.getController("Hispanic").show();

  cp5.getController("Ancestry").setPosition(490,210);
  
  cp5.getController("Hispanic").setPosition(490,570);

  
  
}


public void Hispanic(int theValue) {
 
 
  cp5.getController("Ancestry").show();
  
  cp5.getController("Race").show();
  
  cp5.getController("Hispanic").hide();

  cp5.getController("Ancestry").setPosition(490,210);
  
  cp5.getController("Race").setPosition(490,570);
  
}
