// Image spacing

int leftIndent = 20;
int topIndent = 20;
int imageSpacing = 10;
int numCols = 3;
int houseId = 10;
// Image variables
  PImage[] activeHouseImgs;
  PImage[] defaultHouseImgs;

String houseStr[] = new String[] {"One", "Two", "Three", "Four", "Five", "Six or more"};

// Household Size
public void householdSize(){
  activeHouseImgs = new PImage[] {loadImage("Active-House-1.png"),loadImage("Active-House-2.png"),loadImage("Active-House-3.png"),loadImage("Active-House-4.png"),loadImage("Active-House-5.png"),loadImage("Active-House-6.png")};
  defaultHouseImgs  = new PImage[] {loadImage("House-1.png"),loadImage("House-2.png"),loadImage("House-3.png"),loadImage("House-4.png"),loadImage("House-5.png"),loadImage("House-6.png")};
  String buttonName;
    for(int i = 0; i < defaultHouseImgs.length; i++){      
      
      buttonName = "house-" + new Integer(i+1).toString(); 
      cp5.addButton(buttonName)
       .setPosition(leftIndent + (i % numCols)*(defaultHouseImgs[i].width + imageSpacing), topIndent + (i / numCols) * (defaultHouseImgs[i].height + imageSpacing))
       .setImage(defaultHouseImgs[i])
       .setSize(defaultHouseImgs[i])
       .setId(houseId);
      ;
     cp5.getController(buttonName).moveTo("Household Size");
    }
  }
