//We are creating the final page.

import controlP5.*;
ControlP5 cp5;
 
int myColor = color(255);//(10,23,88);  Background color
 
//text label variables 
Textlabel selectionHeader; 
Textlabel firstSelect;
Textlabel secondSelect;
Textlabel thirdSelect;
Textlabel fourthSelect;
Textlabel pickAvatar;
Textlabel pickColor;
//----------------------
//variables for final results to be printed in labels 
String houseSize = "9"; //firstSelect
String houseType = "two floors house";//secondSelect
String industry = "Information Technology";//thirdSelect
String heritage = "White-Arabs";//fourthSelect
//----------------------
//positions variables
int avPosX;
int avPosY=300;
int colorPosX;
int colorPosY= 600;
int leftIndent = 15;
int rightIndent = 200; 
//-----------------------
//array images
PImage avatarDefault []; 
PImage avatarActive []; 
PImage colorDefault [];
PImage colorActive [];
PImage controlDefault [];
PImage controlActive [];


void setup (){

//size(1920, 1080);  
size(1300,1000);    
cp5 = new ControlP5(this);

//avatar array images
avatarDefault = new PImage[]{loadImage("av1Def.png"),loadImage("av2Def.png"),loadImage("av3Def.png")
                            ,loadImage("av4Def.png") };
avatarActive = new PImage []{loadImage("av1Actv.png"),loadImage("av2Actv.png"),loadImage("av3Actv.png")
                            ,loadImage("av4Actv.png")};
//color array images                            
colorDefault = new PImage [] {loadImage("red_def.png"),loadImage("green_def.png"),loadImage("blue_def.png")
                            ,loadImage("orange_def.png"),loadImage("purple_def.png")};
colorActive = new PImage [] {loadImage("red_active.png"),loadImage("green_active.png"),loadImage("blue_active.png")
                            ,loadImage("orange_actv.png"),loadImage("purple_actv.png")};
//control array images                            
controlDefault = new PImage [] {loadImage("backDefault_but.png"),loadImage("finishDefault_but.png")};
controlActive = new PImage [] {loadImage("backActive_but.png"),loadImage("finishActive_but.png")};

//Building lables 
//Your selection header label
selectionHeader = cp5.addTextlabel("label0")
                    .setText("Your Selections:")
                    .setPosition(10,30)
                    .setColorValue(0xffff0000)
                    .setFont(createFont("Arial-BoldMT-48.vlw",40))
                    ;
                    
//results labels                    
firstSelect = cp5.addTextlabel("label1")
                    .setText("Q1: your household size is: " + houseSize )
                    .setPosition(10,100)
                    .setColorValue(0xff0101DF)
                    .setFont(createFont("Arial-BoldMT-48.vlw",25))
                    ;           
secondSelect = cp5.addTextlabel("label2")
                    .setText("Q2: your house type is: " + houseType )
                    .setPosition(10,130)
                    .setColorValue(0xff0101DF)
                    .setFont(createFont("Arial-BoldMT-48.vlw",25))
                    ; 
thirdSelect = cp5.addTextlabel("label3")
                    .setText("Q3: your industry field is: " + industry )
                    .setPosition(10,160)
                    .setColorValue(0xff0101DF)
                    .setFont(createFont("Arial-BoldMT-48.vlw",25))
                    ; 
fourthSelect = cp5.addTextlabel("label4")
                    .setText("Q4: your heritage is: " + heritage )
                    .setPosition(10,190)
                    .setColorValue(0xff0101DF)
                    .setFont(createFont("Arial-BoldMT-48.vlw",25))
                    ;     
                    
//others labels                    
pickAvatar = cp5.addTextlabel("label5")
                    .setText("Pick your avatar:")
                    .setPosition(10,250)
                    .setColorValue(0xff660000)
                    .setFont(createFont("Arial-BoldMT-48.vlw",25))
                    ;              
pickColor = cp5.addTextlabel("label6")
                    .setText("Pick your bubble colors:")
                    .setPosition(10,530)
                    .setColorValue(0xff660000)
                    .setFont(createFont("Arial-BoldMT-48.vlw",25))
                    ;                
                    
   //Creating buttons
   
   //Avatar buttons 
   //Avatar order from left side.
   //Avatar1   
   cp5.addButton("Av1")
   //Set the position of the button : (X,Y)
   .setPosition(50,avPosY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(1)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   .setColorBackground( color( 255,0,0 ) )
   //set button image
   //.setImage(loadImage("Av1.png"));
   .setImages(avatarDefault[0], avatarDefault[0], avatarActive[0])
   .updateSize();
   ;
   
   
   //Avatar2
   cp5.addButton("Av2")
   //Set the position of the button : (X,Y)
   .setPosition(350,avPosY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(2)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,255,0 ) )
    //set button image
   //.setImage(loadImage("Av2.png"));
   .setImages(avatarDefault[1], avatarDefault[1], avatarActive[1])
   .updateSize();
   ;
   
   //Avatar3
   cp5.addButton("Av3")
   //Set the position of the button : (X,Y)
   .setPosition(650,avPosY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(3)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,0,255 ) )
   //.setImage(loadImage("Av3.png"));
   .setImages(avatarDefault[2], avatarDefault[2], avatarActive[2])
   .updateSize();
   ;
   
   //Avatar4
   cp5.addButton("Av4")
   //Set the position of the button : (X,Y)
   .setPosition(950,avPosY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(4)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,0,255 ) )
   //.setImage(loadImage("Av3.png"));
   .setImages(avatarDefault[3], avatarDefault[3], avatarActive[3])
   .updateSize();
   ;
   
  
   //Color buttons
   //Red color
    cp5.addButton("colorRed")
   //Set the position of the button : (X,Y)
   .setPosition(leftIndent,colorPosY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(5)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   //.setColorBackground( color( 235,0,0 ) )
   .setImages(colorDefault[0], colorDefault[0], colorActive[0])
   .updateSize();
   ;
   
   //Green color
    cp5.addButton("colorGreen")
   //Set the position of the button : (X,Y)
   .setPosition(leftIndent+150,colorPosY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(6)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   //.setColorBackground( color( 0,235,0 ) );
   .setImages(colorDefault[1], colorDefault[1], colorActive[1])
   .updateSize();
   ;

   //Blue color
    cp5.addButton("colorBlue")
   //Set the position of the button : (X,Y)
   .setPosition(leftIndent+300,colorPosY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(7)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   //.setColorBackground( color( 0,0,235 ) )
   .setImages(colorDefault[2], colorDefault[2], colorActive[2])
   .updateSize();
   ;
   
   //Orange color
    cp5.addButton("colorOrange")
   //Set the position of the button : (X,Y)
   .setPosition(leftIndent+450,colorPosY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(8)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   //.setColorBackground( color( 0,0,235 ) )
   .setImages(colorDefault[3], colorDefault[3], colorActive[3])
   .updateSize();
   ;
   
   //Purple color
    cp5.addButton("colorPurple")
   //Set the position of the button : (X,Y)
   .setPosition(leftIndent+600,colorPosY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(9)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   //.setColorBackground( color( 0,0,235 ) )
   .setImages(colorDefault[4], colorDefault[4], colorActive[4])
   .updateSize();
   ;
   
   // Control button
   //Back button
    cp5.addButton("Back")
   //Set the position of the button : (X,Y)
   .setPosition((width - rightIndent*2)+55,600)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(10)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   //.setColorBackground( color( 0,200,0 ) ).setImage(loadImage("Back_button.png"));
   .setImages(controlDefault[0], controlDefault[0], controlActive[0])
   //.setImages(loadImage("backDefault_but.png"), loadImage("backDefault_but.png"), loadImage("backActive_but.png"))
   .updateSize();
   ;
   
   //Finish button
    cp5.addButton("Finish")
   //Set the position of the button : (X,Y)
   .setPosition(width-rightIndent,600)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(11)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   //.setColorBackground( color( 0,200,0 ) ).setImage(loadImage("finish_button.png"));
   .setImages(controlDefault[1], controlDefault[1], controlActive[1])
   //.setImages(loadImage("finishDefault_but.png"), loadImage("finishDefault_but.png"), loadImage("finishActive_but.png"))
   .updateSize();
   ;
   /*
   //Creating logo butt
    cp5.addButton("logo")
   //Set the position of the button : (X,Y)
   .setPosition(1000,70)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(12)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,200,0 ) )
   .setImage(loadImage("Cocensus_logo.png"));
   */ 
   
   //cp5.getController("Av1").setImages(avatarDefault[0], avatarDefault[0], controlActive[1]);

   
 } 
 
 void draw (){
  background(myColor);
  noStroke();
  fill(210);

  //strokeWeight(5);
  //line(0,0,235,0);   
  stroke(0);
  rect(10,90,800,160);
 }
 
public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());

}

public void Av1(int theValue) {
  println("a button event from Av1: "+theValue);   
}
public void Av2(int theValue) {
  println("a button event from Av2: "+theValue);
}
public void Av3(int theValue) {
  println("a button event from Av3: "+theValue);
  //myColor = color(90);
}
 //0xffaa0000   dark red 
 //0xffffff00   yellow
 //0xff660000   brown
 //0xffdddddd   gray
 //0xffff88ff   pink
 //0xffff0000   red





