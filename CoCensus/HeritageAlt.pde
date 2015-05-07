
Textarea titleTextArea5, helpTextArea5;

RadioButton r;
RadioButton h;
RadioButton a;

int aButtonPressed = 0;

PFont sfont;

ControlP5 cp20;

public void heritageAlt() {

  cp20 = new ControlP5(this); 

  String fileName = "Heritage";

  String titleText = "Heritage"; 
  String helpText = "Choose from what the census calls:";

  int i = 0;

  sfont = loadFont("Verdana-Bold-20.vlw");


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
    .setPosition(330, 300)
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
    .setPosition(810, 300)
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
    .setPosition(1290, 300)
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



  //



  r = cp20.addRadioButton("rRadioButton")
    .setPosition(900, 150)
      //.setSize(defaultHouseImgs[0].width,defaultHouseImgs[0].height)
      .setItemsPerRow(3)
        .setSpacingColumn(210)
          .setSize(50, 50)
            /*.setColorForeground(color(120))
             .setColorActive(color(255))
             .setColorLabel(color(255))*/

            .setColorBackground(color(85))
              .setColorForeground(color(33, 120, 33))
                .setColorActive(color(33, 120, 33))
                  .setColorLabel(color(0))
                    /*.addItem("one",1)
                     .addItem("two",2)
                     .addItem("three",3)
                     .addItem("four",4)
                     .addItem("five",5)*/
                    //.moveTo("Heritage")
                    ;
  for (i=0; i<numRaces; i++) {
    r.addItem(allRaces[i], i+1);
  }
  for (Toggle t : r.getItems ()) {
    t.captionLabel().toUpperCase(false);
    t.captionLabel().setFont(sfont);
  }  
  h = cp20.addRadioButton("hRadioButton")
    .setPosition(900, 150)
      //.setSize(defaultHouseImgs[0].width,defaultHouseImgs[0].height)
      .setItemsPerRow(1)
        .setSpacingColumn(210)
          .setSize(50, 50)
            /*.setColorForeground(color(120))
             .setColorActive(color(255))
             .setColorLabel(color(255))*/

            .setColorBackground(color(85))
              .setColorForeground(color(33, 120, 33))
                .setColorActive(color(33, 120, 33))
                  .setColorLabel(color(0))
                    /*.addItem("one",1)
                     .addItem("two",2)
                     .addItem("three",3)
                     .addItem("four",4)
                     .addItem("five",5)*/
                    //.moveTo("Heritage")
                    ;
  for (i=0; i<numHisp; i++) {
    h.addItem(allHispanics[i], i+1);
  }
  for (Toggle t : h.getItems ()) {
    t.captionLabel().toUpperCase(false);
    t.captionLabel().setFont(sfont);
  }
  a = cp20.addRadioButton("aRadioButton")
    .setPosition(900, 150)
      //.setSize(defaultHouseImgs[0].width,defaultHouseImgs[0].height)
      .setItemsPerRow(3)
        .setSpacingColumn(230)
          .setSize(50, 50)
            /*.setColorForeground(color(120))
             .setColorActive(color(255))
             .setColorLabel(color(255))*/

            .setColorBackground(color(85))
              .setColorForeground(color(33, 120, 33))
                .setColorActive(color(33, 120, 33))
                  .setColorLabel(color(0))
                    /*.addItem("one",1)
                     .addItem("two",2)
                     .addItem("three",3)
                     .addItem("four",4)
                     .addItem("five",5)*/
                    //.moveTo("Heritage")
                    ;
  for (i=0; i<numAncestry; i++) {
    a.addItem(allAncestries[i], i+1);
  }
  for (Toggle t : a.getItems ()) {
    t.captionLabel().toUpperCase(false);
    t.captionLabel().setFont(sfont);
  }




  r.hide();
  h.hide();
  a.hide();
}

public void Ancestry(int theValue) {

  aButtonPressed = 1;

  cp5.getController("Ancestry").hide();

  //cp5.getController("Ancestry").setPosition(850,50);

  //cp5.getController("Ancestry").setSize(800, 800);

  cp5.getController("Race").show();

  cp5.getController("Hispanic").show();

  cp5.getController("Race").setPosition(400, 120); //640

    cp5.getController("Hispanic").setPosition(400, 480);

  r.hide();
  h.hide();
  a.show();
}


public void Race(int theValue) {

  aButtonPressed = 1;

  cp5.getController("Ancestry").show();

  cp5.getController("Race").hide();

  cp5.getController("Hispanic").show();

  cp5.getController("Ancestry").setPosition(400, 120);

  cp5.getController("Hispanic").setPosition(400, 480);


  r.show();
  h.hide();
  a.hide();
}


public void Hispanic(int theValue) {

  aButtonPressed = 1;

  cp5.getController("Ancestry").show();

  cp5.getController("Race").show();

  cp5.getController("Hispanic").hide();

  cp5.getController("Ancestry").setPosition(400, 120);

  cp5.getController("Race").setPosition(400, 480);

  r.hide();
  h.show();
  a.hide();
}



void aRadioButton(int num) {
  println("Ancestry radio button");
  r.deactivateAll();
  h.deactivateAll();
  int tabIndex = 0; // this is where we are storing the result of this tab into, should be unique for each tab

  println("Heritage: radio Button event: "+a);  // if you really want you can change the name of the tab

  ///////////////////////////////////////////////////////////////////////////////////////////

  int index = num - 1; // subtracting one for array indexing
  if (num < 0) {
    resultStr[tabIndex] = ""; // reset resultStr

    heritageAnswer.setText("");
    cp5.getTab("Heritage").setColorBackground(tabBackground).setColorActive(tabBackgroundSelect);
    ////////cp10.hide();
  } else {
    resultStr[tabIndex] = allAncestries[index];
    resultFloat[tabIndex] = num;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);

    heritageAnswer.setText(ancestryArray[index]);
    cp5.getTab("Heritage").setColorBackground(tabBackgroundComplete).setColorActive(tabBackgroundComplete);
    ////////cp10.show();
  }

  // changes answered tab green

  helpTextArea5.setColorBackground(windowBackground);
  //titleTextArea4.setColorBackground(windowBackground);
  r.deactivateAll();
  h.deactivateAll();
}
void hRadioButton(int num) {
  println("Hispanic radio button");
  r.deactivateAll();
  a.deactivateAll();
  int tabIndex = 0; // this is where we are storing the result of this tab into, should be unique for each tab

  println("Heritage: radio Button event: "+a);  // if you really want you can change the name of the tab

  ///////////////////////////////////////////////////////////////////////////////////////////

  int index = num - 1; // subtracting one for array indexing
  if (num < 0) {
    resultStr[tabIndex] = ""; // reset resultStr

    heritageAnswer.setText("");
    cp5.getTab("Heritage").setColorBackground(tabBackground).setColorActive(tabBackgroundSelect);
    ////////cp10.hide();
  } else {
    resultStr[tabIndex] = allHispanics[index];
    resultFloat[tabIndex] = num;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);

    heritageAnswer.setText(hispanicArray[index]);
    cp5.getTab("Heritage").setColorBackground(tabBackgroundComplete).setColorActive(tabBackgroundComplete);
    ////////cp10.show();
  }

  // changes answered tab green

  helpTextArea5.setColorBackground(windowBackground);
  //titleTextArea4.setColorBackground(windowBackground);
  r.deactivateAll();
  a.deactivateAll();
}
void rRadioButton(int num) {
  println("Race radio button");
  a.deactivateAll();
  h.deactivateAll();
  int tabIndex = 0; // this is where we are storing the result of this tab into, should be unique for each tab

  println("Heritage: radio Button event: "+a);  // if you really want you can change the name of the tab

  ///////////////////////////////////////////////////////////////////////////////////////////

  int index = num - 1; // subtracting one for array indexing
  if (num < 0) {
    resultStr[tabIndex] = ""; // reset resultStr

    heritageAnswer.setText("");
    cp5.getTab("Heritage").setColorBackground(tabBackground).setColorActive(tabBackgroundSelect);
    ////////cp10.hide();
  } else {
    resultStr[tabIndex] = allRaces[index];
    resultFloat[tabIndex] = num;
    println("ResultStr: " + resultStr[tabIndex] + " ResultFloat: " + resultFloat[tabIndex]);

    heritageAnswer.setText(raceArray[index]);
    cp5.getTab("Heritage").setColorBackground(tabBackgroundComplete).setColorActive(tabBackgroundComplete);
    ////////cp10.show();
  }

  // changes answered tab green

  helpTextArea5.setColorBackground(windowBackground);
  //titleTextArea4.setColorBackground(windowBackground);
  a.deactivateAll();
  h.deactivateAll();
}

