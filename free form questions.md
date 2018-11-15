## What is a detail view controller?

A detail view controller is typically used to present more information/data about some element of the view controller that lead to it. For example, if I have an app that lists ten animals, I could simply put their names and a sample image of them in main view controller, and have more information available in a detail view once a user taps on the element, i.e. a table cell, 

## What does a segue do? How do you use it and where?

Passes information from one view controller to another. It's enabled in part via ctrl+dragging from one view controller or it's item to a seperate view controller.


## What are other ways your detail view controller could get its information? Why use segues?

Segues help avoid redundancy, as the other way the detail VC could obtain the information is to hardcode in the connections to whatever is stored into the model in more than one place.

## Why must you conditionally cast custom cell types when using them with table views? How do you do this?

You use `as? TableViewCellName` in orderto conditionaly cast something. It possible that it might not contain any information, so to avoid being thrown an error at, conditionally casting should help.

## Why must you conditionally cast detail view controller types when using them with segues? How do you do this?

It's possible that there might not be information in whatever is to be transfered from the segue to the detail view controller, so havin the conditional cast helps avoid any issues with the application malfunctioning. 
