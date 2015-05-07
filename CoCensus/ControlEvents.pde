// This file will contain control event handlers for different actions/events
// that are set off when interacting with the application.
// This will be used for debugging, to automate some actions, user feedback, etc.

// Tab selection event


void controlEvent(ControlEvent theControlEvent) {
  if (theControlEvent.isTab()) {
    println("got an event from tab : "+theControlEvent.getTab().getName()+" with id "+theControlEvent.getTab().getId());

    String tabName = theControlEvent.getTab().getName();

    if ( tabName.equals("Household Size") || tabName.equals("House Type") || tabName.equals("Industry") || tabName.equals("Heritage")) {
      currentTab = theControlEvent.getTab().getId();
      tabCoordinates.x = theControlEvent.getTab().getArrayValue()[0];
      //tabCoordinates.y = theControlEvent.getTab().getArrayValue()[1];


      //show/hide tabs within heritage
      if (cp5.getTab("Heritage").getId() == currentTab) {

        //cp9.show();
      } else {

        //cp9.hide();
      }
    }
  }
}

