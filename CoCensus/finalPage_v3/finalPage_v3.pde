//We are creating the final page.

import controlP5.*;
ControlP5 cp5;
 
int myColor = color(255);
   
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
int leftIndent = 15;   // used in color buttons
int rightIndent = 200; // used in control buttons 

//-----------------------
//array images
PImage avatarDefault []; 
PImage avatarActive []; 
PImage colorDefault [];
PImage colorActive [];
PImage controlDefault [];
PImage controlActive [];

//label String
String label0 = "Your Selections:";
String label1 = "Q1: your household size is: ";
String label2 = "Q2: your house type is: ";
String label3 = "Q3: your industry field is: ";
String label4 = "Q4: your heritage is: ";
String label5 = "Pick your avatar:";
String label6 = "Pick your bubble colors:";

//columns 
int avatarCol = 4;
int colorCol = 5;

//Y positions
int resultBoxY = 200;
int avatarY = 500;
int colorY = 800;
int controlY = 935;
//int resultLabelY = 220;

void setup (){

size(1920, 1080);
//size(1300,1000);  


int pageCenterX = width/2;
int pageCenterY = height/2;
int pageQuarterX = width/4;
int pageQuarterY = height/4;

//X positions
//int labelPosX = pageCenterX - pageQuarterX;


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
selectionHeader = cp5.addTextlabel("label0").setText(label0).setPosition(pageCenterX - textWidth(label1),60)
.setColorValue(0xffff0000).setFont(createFont("Arial-BoldMT-48.vlw",40));                   
//results labels                    
firstSelect = cp5.addTextlabel("label1").setText(label1 + houseSize )
.setPosition(pageCenterX-pageQuarterX,resultBoxY+30).setColorValue(0xff0101DF).setFont(createFont("Arial-BoldMT-48.vlw",25));  

secondSelect = cp5.addTextlabel("label2").setText(label2 + houseType )
.setPosition(pageCenterX-pageQuarterX,resultBoxY+60).setColorValue(0xff0101DF).setFont(createFont("Arial-BoldMT-48.vlw",25));

thirdSelect = cp5.addTextlabel("label3").setText(label3 + industry )
.setPosition(pageCenterX-pageQuarterX,resultBoxY+90).setColorValue(0xff0101DF).setFont(createFont("Arial-BoldMT-48.vlw",25));

fourthSelect = cp5.addTextlabel("label4").setText(label4 + heritage )
.setPosition(pageCenterX-pageQuarterX,resultBoxY+120).setColorValue(0xff0101DF).setFont(createFont("Arial-BoldMT-48.vlw",25));
                    
//other labels                    
pickAvatar = cp5.addTextlabel("label5").setText(label5).setPosition(10,425)
.setColorValue(0xff660000).setFont(createFont("Arial-BoldMT-48.vlw",25));
                  
pickColor = cp5.addTextlabel("label6").setText(label6).setPosition(10,725)
.setColorValue(0xff660000).setFont(createFont("Arial-BoldMT-48.vlw",25));                
                    
//Creating buttons
   
//Avatar buttons 
//Avatar order from left side. 
//loop for creating all avatar button with auto allocation  
int avatarSpace = width/avatarCol;
int avatarSpaceEnd = avatarSpace;
for (int i=0; i<avatarCol;i++){
   
 int avatarCenter = ((avatarDefault[i].width)/2) ; 
 int avatarSpaceCenter = avatarSpaceEnd - avatarSpace/2; 
 int exactAvatarPos = avatarSpaceCenter - avatarCenter;
 
 cp5.addButton("Av"+i)
   //Set the position of the button : (X,Y)
   .setPosition(exactAvatarPos,avatarY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(1)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   .setColorBackground( color( 255,0,0 ) )
   //set button image
   //.setImage(loadImage("Av1.png"));
   .setImages(avatarDefault[i], avatarDefault[i], avatarActive[i])
   .updateSize();
   ;
    
   avatarSpaceEnd += avatarSpace; 
} 

//loop for creating all color buttons with auto allocation

int colorSpace = width/colorCol;
int colorSpaceEnd = colorSpace;
for (int i=0; i<colorCol;i++){
   
 int colorCenter = ((colorDefault[i].width)/2) ; 
 int colorSpaceCenter = colorSpaceEnd - colorSpace/2; 
 int exactColorPos = colorSpaceCenter - colorCenter;
 
 
  //Color buttons
   //Red color
    cp5.addButton("color"+i)
   //Set the position of the button : (X,Y)
   .setPosition(exactColorPos,colorY)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(5)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE)
   //.setColorBackground( color( 235,0,0 ) )
   .setImages(colorDefault[i], colorDefault[i], colorActive[i])
   .updateSize();
   ;
 
    colorSpaceEnd += colorSpace; 

 
}   
   // Control button
   
   int backControlX = 40;
   int finishControlX = (width - controlDefault[1].width) - 40;
   
   //Back button
    cp5.addButton("Back")
   //Set the position of the button : (X,Y)
   .setPosition(backControlX,controlY)
   //.setPosition((width - rightIndent*2)+55,controlY)
   
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
   .setPosition(finishControlX,controlY)
   //.setPosition(width-rightIndent,controlY)
   
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
   :  
 } 
 
void draw (){
  
background(myColor);
noStroke();

fill(210);

int pageCenterX = width/2;
int pageCenterY = height/2;
int pageQuarterX = width/4;
int pageQuarterY = height/4;

stroke(0);
rect(pageCenterX - pageQuarterX, resultBoxY, 960, 160);
//rect(pageCenterX - pageQuarterX, pageCenterY, 800, 160);
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





