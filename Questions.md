# Questions:

### What is a detail view controller?
A detail view controller is a view controller that shows details about a specific section or row of a view controller, possibly with the ability to edit model data that are shown in that view controller.

### What does a segue do? How do you use it and where?
A segue is "an object that prepares for and performs the visual transition between two view controllers." You use it when you want to transition views. You would use it with a call of something let override func prepare(for segue: UIStoryboardSegue, sender Any?)

### What are other ways your detail view controller could get its information? Why use segues?
Segues handle the transition very elegantly and with less code. I think you could also use a delegate/delegator relationship to get information.

### Why must you conditionally cast custom cell types when using them with table views? How do you do this?
because the traditional cells don't have the properties that the customs cells do so if you try to use a traditional table view cell it would not have the property.

You do this with an, as?  which represents a conditional cast

## Why must you conditionally cast detail view controller types when using them with segues? How do you do this?
because your segue destination is a custom view controller and has specific code related to it that may need to be referenced.
