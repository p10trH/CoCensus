Textlabel welcomeTitle;
Textlabel welcomeInstruction;

Textlabel welcomeDisclaim;

PFont welcomeFont;

boolean aboutToggle = false;

Canvas ccWelcome;

PImage welcomeScreenBackground;

public void welcome() {

  cp7 = new ControlP5(this);

  ccWelcome = new MyCanvasWelcome();
  ccWelcome.pre(); // use post() to draw on top of existing controllers, pre() otherwise
  cp7.addCanvas(ccWelcome); // add the canvas to cp5

  welcomeFont = loadFont("Arial-BoldMT-78.vlw");


  welcomeTitle = cp7.addTextlabel("welcome")
    .setText("Welcome to CoCensus!")
      .setPosition(520, 100)
        .setColorValue(0)
          .setFont(welcomeFont)
            //.setFont(createFont("arial-bold",78))
            ;

  welcomeInstruction = cp7.addTextlabel("welcomeInstr")
    .setText("Explore how the census represents people in New York")
      .setPosition(515, 175)
        .setColorValue(0)
          //.setFont(welcomeFont)
          .setFont(createFont("arial", 36))
            ;

  welcomeDisclaim = cp7.addTextlabel("welcomeDisc")
    .setText("This research is supported by money from the National Science Foundation. Dr. Leilah Lyons, Director of Digital Learning of the New York Hall of Science and Assistant Professor of Computer Science at the University of Illinois at Chicago is the principal investigator on the study. By participating in this research, you consent to allow the research team to use video and audio recordings of your interactions in the exhibit in presentations and publications related to this work. You may contact Dr. Lyons at llyons@nysci.org or (734)274-1412 with any questions.")
      .setMultiline(true) 
        .setPosition(50, 920)
          .setWidth(1820)
            .setHeight(160)
              .setColorValue(0)
                //.setFont(welcomeFont)
                .setFont(createFont("arial", 24))
                  .hide()
                    ;

  cp7.addButton("createProfile")
    //.setPosition(270, 322)
    .setPosition(width/4 - 300, height/2 - 298)
      .setImages(loadImage("createProfile2.png"), loadImage("createProfileActive2.png"), loadImage("createProfileActive2.png"))
        .updateSize()
          ; 

  cp7.addButton("presetProfile")
    //.setPosition(1230, 322)
    .setPosition(3*(width/4) - 300, height/2 - 298)
      .setImages(loadImage("presetProfile2.png"), loadImage("presetProfileActive2.png"), loadImage("presetProfileActive2.png"))
        .updateSize()
          ; 

  cp7.addButton("about")
    .setCaptionLabel("About CoCensus") 
      //.setPosition(270, 322)
      .setSize(250, 80)
        .setPosition(width/2 - 125, 1000)
          .setColorCaptionLabel(color(50, 50, 255))
            .setColorBackground(color(255))
              .setColorForeground(color(155))
                .setColorActive(color(255))
                  .getCaptionLabel()
                    .setFont(createFont("arial", 24))
                      .align(ControlP5.CENTER, ControlP5.CENTER)
                        //.setImages(loadImage("createProfile.png"), loadImage("createProfileActive.png"), loadImage("createProfileActive.png"))
                        //.updateSize()
                        ;
}

public void createProfile(int theValue) {

  cp7.hide();
  cp5.show();
}

public void presetProfile(int theValue) {

  //cp7.hide();
  //cp5.show();
}

public void about(int theValue) {

  if (aboutToggle) {

    welcomeDisclaim.hide();

    aboutToggle = false;
  } else {

    welcomeDisclaim.show();

    aboutToggle = true;
  }
}

class MyCanvasWelcome extends Canvas {

  public void setup(PApplet theApplet) {

    welcomeScreenBackground = loadImage("newYorkTrans.png");
    //image(startScreenBackground,0,0);
  }  

  public void draw(PApplet p) {

    image(welcomeScreenBackground, 0, 0);
    // renders a square with randomly changing colors
    // make changes here.
    //p.fill(100);
    //p.rect(p.mouseX-20, y-20, 240, 30);
    //p.fill(255);
    //p.text("This text is drawn by MyCanvas", p.mouseX,y);
    //p.text("This text is drawn by MyCanvas", p.mouseX,y);
  }
}

