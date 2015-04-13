
Canvas cc2;

PImage startScreenBackground;

public void startScreen() {
  
  cc2 = new MyCanvas2();
  cc2.pre(); // use post() to draw on top of existing controllers, pre() otherwise
  cp6.addCanvas(cc2); // add the canvas to cp5
  
  // set font
  startFont = loadFont("Arial-BoldMT-78.vlw");
  
  //cp6.setImage(loadImage("circle.png"));
  
  cp6.addButton("startButton")
     .setPosition(700, 270)
     .setImages(loadImage("startButtonDefault.png"), loadImage("startButtonActive.png"), loadImage("startButtonActive.png"))
     .updateSize()
     ; 
  
}

public void startButton(int theValue) {
  
  cp6.hide();
  cp7.show();
  //cp5.show();
  
}


class MyCanvas2 extends Canvas {

  public void setup(PApplet theApplet) {
    
    startScreenBackground = loadImage("newYork.jpg");
    //image(startScreenBackground,0,0);
  }  

  public void draw(PApplet p) {
    
    image(startScreenBackground,0,0);
    // renders a square with randomly changing colors
    // make changes here.
    //p.fill(100);
    //p.rect(p.mouseX-20, y-20, 240, 30);
    //p.fill(255);
    //p.text("This text is drawn by MyCanvas", p.mouseX,y);
    //p.text("This text is drawn by MyCanvas", p.mouseX,y);
  }
}
