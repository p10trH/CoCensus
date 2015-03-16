//We are creating the final page.

import controlP5.*;
ControlP5 cp5;
 
Textlabel myTextlabelA;
Textlabel myTextlabelB;
Textlabel myTextlabelC;

 void setup (){
   
    size(1300,1000);
    background(255);
   cp5 = new ControlP5(this);

                    noStroke();
                    fill(210);
                    rect(10,90,800,160);
                    
                    myTextlabelA = cp5.addTextlabel("label1")
                    .setText("Your Selections:")
                    .setPosition(10,30)
                    .setColorValue(0xffff0000)
                    .setFont(createFont("Arial-BoldMT-48.vlw",40))
                    ;
                    
                    myTextlabelB = cp5.addTextlabel("label2")
                    .setText("Q1: your household size is:5")
                    .setPosition(10,100)
                    .setColorValue(0xff0101DF)
                    .setFont(createFont("Arial-BoldMT-48.vlw",25))
                    ;
                    
                    myTextlabelC = cp5.addTextlabel("label3")
                    .setText("Pick your avatar:")
                    .setPosition(10,250)
                    .setColorValue(0xff660000)
                    .setFont(createFont("Arial-BoldMT-48.vlw",25))
                    ;
                  
                    myTextlabelC = cp5.addTextlabel("label4")
                    .setText("Pick your bubble colors:")
                    .setPosition(10,530)
                    .setColorValue(0xff660000)
                    .setFont(createFont("Arial-BoldMT-48.vlw",25))
                    ;
   
   //Creating avatar buttons
   //Avatar1   
   cp5.addButton("Av1")
   //Set the position of the button : (X,Y)
   .setPosition(50,300)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(0)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 255,0,0 ) )
   //set button image
   .setImage(loadImage("Av1.png"));
   ;
   
   //Avatar2
   cp5.addButton("Av2")
   //Set the position of the button : (X,Y)
   .setPosition(350,300)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(0)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,255,0 ) )
    //set button image
   .setImage(loadImage("Av2.png"));
   ;
   
   //Avatar3
   cp5.addButton("Av3")
   //Set the position of the button : (X,Y)
   .setPosition(650,300)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(0)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,0,255 ) )
   .setImage(loadImage("Av3.png"));
   ;
   
   //Creating color buttons
   //Red color
    cp5.addButton(" ")
   //Set the position of the button : (X,Y)
   .setPosition(100,600)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(0)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 235,0,0 ) );
   
   //Green color
    cp5.addButton("  ")
   //Set the position of the button : (X,Y)
   .setPosition(250,600)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(0)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,235,0 ) );
   
   //Blue color
    cp5.addButton("")
   //Set the position of the button : (X,Y)
   .setPosition(400,600)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(0)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,0,235 ) );
   
    //Back button
    cp5.addButton("Back")
   //Set the position of the button : (X,Y)
   .setPosition(750,600)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(0)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,200,0 ) )
   .setImage(loadImage("Back_button.png"));
   
   
   //Finish button
    cp5.addButton("Finish")
   //Set the position of the button : (X,Y)
   .setPosition(1000,600)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(0)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,200,0 ) )
   .setImage(loadImage("finish_button.png"));
   
   //Creating logo butt
    cp5.addButton("logo")
   //Set the position of the button : (X,Y)
   .setPosition(1000,70)
   //Set the size of the button : (X,Y)
   .setSize(100,100)
   //Set the pre-defined Value of the button : (int)
   .setValue(0)
   //set the way it is activated : RELEASE the mouseboutton or PRESS it
   .activateBy(ControlP5.RELEASE).setColorBackground( color( 0,200,0 ) )
   .setImage(loadImage("Cocensus_logo.png"));
   
 } 
 
 //0xffaa0000   dark red 
 //0xffffff00   yellow
 //0xff660000   brown
 //0xffdddddd   gray
 //0xffff88ff   pink
 //0xffff0000   red



