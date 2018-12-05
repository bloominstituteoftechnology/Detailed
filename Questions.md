## Questions: Table View Controllers - Detailed  

**What is a detail view controller?**  
A detail view controller is a view controller is designed to give the user a way to provided or configure detailed information about an items show on another view controller.  The use of a detail view controller creates a master or source controller to detail controller.  The source view sends information to the detail controller to facilitate edits configuration of the elements displayed on the master view.  The detail view controller can be thought to serve as a supporting controller to the source controller.

**What does a segue do? How do you use it and where?**  
A segue is used to provide transitions from one view controller to another view controller.  In addition to providing the transition, a segue also provides a means of transferring data from one view to the segued view.  Because it is not a good practice to edit data that on another view, the segue acts as a conduit to pass data between the views as well as providing the means to change focus from one view to another.  The segue from one view to another is configured in a hierarchy.  So to return to an originating view a back link is created by the segue process.  Segues are one of the keys to creating the source to detail view relationship. 

**What are other ways your detail view controller could get its information? Why use segues?**  
The first alternative to segues the comes to mind is to use and populate data items in a custom class and a popover view. 
Using segues affords the developer all of the benefits, organization and control that segues provide.  Without them there is more software management code that must be developed.  It flies counter to the DRY aphorism in software development.  And if done poorly, it can lead to dead kittens.

**Why must you conditionally cast custom cell types when using them with table views? How do you do this?**  
Conditionally casting of custom cell types is necessary because the table view functions required to configure the table view cells are expecting a default tableview class of UITableViewCell. To enable the view controller to have access to custom methods a conditionally downcast to custom cell type subclass must be performed using the optional type cast operator **as?**.  The forced downcast operator **as!** may also be used, but is not as safe as a conditional type cast.

**Why must you conditionally cast detail view controller types when using them with segues? How do you do this?**  
Just as with the table views, if the detail view controller contains custom properties or custom methods the custom methods will be made available with the segue by conditionally down casting the table view destination using the conditional downcast operator **as?** when setting the segue destination.
