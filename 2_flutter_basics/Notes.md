## Widgets

### Container
* Simplest widget
* Can be styled with boxDecoration

### Center
* Aligns child to middle of parent

### Text
* Displays string
* Can be styled with style

### Column
* Accepts children, lays them out in a vertical column
* Key layout values
  * mainAxisSize
  * crossAxisAlignment
  * mainAxisAlignment

### SizedBox
* Just a generic sizer - preferred in most cases over padding / margin as it's more readable

### Padding
* Utility for spacing
* Reccomended to use only within components rather than to space them

### Expanded
* Allocates as much space as possible
* `flex: int` functions similar to css - priority

### Local images
* Need to be added to pubspec file
* Reccomended to call the directory "assets"
* Image widget has a few options e.g. network / file / asset
