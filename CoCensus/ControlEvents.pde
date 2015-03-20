// This file will contain control event handlers for different actions/events
// that are set off when interacting with the application.
// This will be used for debugging, to automate some actions, user feedback, etc.

// Tab selection event


void controlEvent(ControlEvent theControlEvent) {
  if (theControlEvent.isTab()) {
    println("got an event from tab : "+theControlEvent.getTab().getName()+" with id "+theControlEvent.getTab().getId());
    //println("got an event from tab : "+theControlEvent.getTab().getName()+" with id "+theControlEvent.getTab().getName());
    //background(backgroundColor);
    //fill(0, 0, 0, 127);
    //rect(0, 910, 1920, 100);
    //cp5.getTab(theControlEvent.getTab().getName()).bringToFront();
    //cp5.getTab(theControlEvent.getTab().getName()).open();
    
  }
  else{
    String buttonName;
    int eventId = theControlEvent.getController().getId();
    if(eventId == houseId){ // Household button clicked
 
      for(int i = 0; i < defaultHouseImgs.length; i++){  
        buttonName = "house-" + new Integer(i+1).toString();
        
        if(buttonName.equals(theControlEvent.getController().getName())){
          theControlEvent.getController().setImage(activeHouseImgs[i]);
          // write result...using index 1 arbitrarily....change this for other tabs
          resultStr[1] = houseStr[i];
        }
        else{
          cp5.getController(buttonName).setImage(defaultHouseImgs[i]);
        }
      }
       println("changed to: " + resultStr[1]);     
    } 
    
    
    
    
    
      

    
  }
}
