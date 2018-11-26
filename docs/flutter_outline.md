# Flutter Outline
**Flutter Outline** represents the code structure of an open **.dart** file as a tree of widgets. You can navigate through your code by selecting widgets in the 
tree:

<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fo_window.png" alt="drawing" width="1000" style:"margin-bottom:15px"/>

 This tool allows to change widgets layout and extract widgets constructors into separate methods.

##Changing widgets layout
**Flutter Outline** allows adding different code structures for changing widgets layout. The following commands are available from the **Flutter Outline** toolbar and context menu:

- **Center widget** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fo_center.png). Add the [Center](https://docs.flutter.io/flutter/widgets/Center-class.html) widget as a parent element for a selected widget. A child widget will be centered within a parent one.
- **Add paddings** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fo_padding.png). Add the [Padding](https://docs.flutter.io/flutter/widgets/Padding-class.html) widget as a parent element for a selected widget. Change paddig of a child widget by setting the value of the **padding** property.
- **Wrap with column** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fo_column.png). Add the [Column](https://docs.flutter.io/flutter/widgets/Column-class.html) widget as a parent element for a selected widget. You can add several widgets within a **Column**, and they will be arranged vertically.
-  **Wrap with row** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fo_row.png). Add the [Row](https://docs.flutter.io/flutter/widgets/Row-class.html) widget as a parent element for a selected widget. You can add several widgets within a **Row**, and they will be arranged horizontally.
- **Wrap with Container** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fo_container.png). Add the [Container](https://docs.flutter.io/flutter/widgets/Container-class.html) widget as a parent element for a selected widget.  You can add several widgets within a **Container** and adjust their position.

###Example
In this example, we center the **Text** widget, wrap it into a column, add one more child element to the column and change paddings for this element:

Before:


	appBar: AppBar(
		 title: Text('App name'),
	),

<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/beforePosition.png" alt="drawing" style:"margin-bottom:15px"/>

After:

	appBar: AppBar(
	  title: Center(child: Column(
	    children: <Widget>[
	      Text('App name'),
	      Padding(
	        padding: const EdgeInsets.all(5.0),
	        child: Text('test'),
	      ),
	    ],
	  )),
    ),

<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/afterPosition.png" alt="drawing" style:"margin-bottom:15px"/>

##Extracting methods
You can extract the code of a selected widget into a separate method. 
To do this,


1. Select a widget in the tree and click ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fo_extractMethod.png), or right-click the widget and select **Extract method**.
2. In the opened window, change the name of the method if needed.
3. Click **Refactor**.

###Example
Before:

	  floatingActionButton: FloatingActionButton(
	    onPressed: (),
	    tooltip: 'Add',
	    child: Icon(Icons.add),
	  ),

After:

	floatingActionButton: buildFloatingActionButton(),
	(…)
		
	FloatingActionButton buildFloatingActionButton() {
			return FloatingActionButton(
	 		onPressed: (),
		    tooltip: 'Add',
		    child: Icon(Icons.add),
			);
	}

	

 


