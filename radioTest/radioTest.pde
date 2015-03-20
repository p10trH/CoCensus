

// ControlP5 RadioButton TEST


import controlP5.*;

ControlP5 cp5;

PImage[] activeHouseImgs;
PImage[] defaultHouseImgs;

int myColorBackground = color(0,0,0);

RadioButton r;

void setup() {
  
  size(800,400);
  
  activeHouseImgs = new PImage[] {loadImage("Active-House-1.png"),loadImage("Active-House-2.png"),loadImage("Active-House-3.png"),loadImage("Active-House-4.png"),loadImage("Active-House-5.png"),loadImage("Active-House-6.png")};
  defaultHouseImgs  = new PImage[] {loadImage("House-1.png"),loadImage("House-2.png"),loadImage("House-3.png"),loadImage("House-4.png"),loadImage("House-5.png"),loadImage("House-6.png")};
  
  
  cp5 = new ControlP5(this);
  
  r = cp5.addRadioButton("radioButton")
         .setPosition(20,160)
         .setSize(defaultHouseImgs[0].width,defaultHouseImgs[0].height)
         .setItemsPerRow(6)
         .setSpacingColumn(50)
         .addItem("one",1)
         .addItem("two",2)
         .addItem("three",3)
         .addItem("four",4)
         .addItem("five",5)
         ;
     
     cp5.getController("one").setImages(defaultHouseImgs[0], activeHouseImgs[0], activeHouseImgs[0]);
     cp5.getController("two").setImages(defaultHouseImgs[1], activeHouseImgs[1], activeHouseImgs[1]);
     cp5.getController("three").setImages(defaultHouseImgs[2], activeHouseImgs[2], activeHouseImgs[2]);
     cp5.getController("four").setImages(defaultHouseImgs[3], activeHouseImgs[3], activeHouseImgs[3]);
     cp5.getController("five").setImages(defaultHouseImgs[4], activeHouseImgs[4], activeHouseImgs[4]);
        
}

void draw() {
  background(myColorBackground);
}

void radioButton(int a) {
  println("a radio Button event: "+a);
  myColorBackground = color(int(a * 50),0,0);
}

//void controlEvent(ControlEvent theEvent) {
//  if(theEvent.isFrom(r)) {
//    print("got an event from "+theEvent.getName()+"\t");
//    for(int i=0;i<theEvent.getGroup().getArrayValue().length;i++) {
//      print(int(theEvent.getGroup().getArrayValue()[i]));
//    }
//    println("\t "+theEvent.getValue());
//    myColorBackground = color(int(theEvent.group().value()*50),0,0);
//  }
//}

