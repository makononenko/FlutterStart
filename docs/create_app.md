#Create a Flutter Application
We will create a simple Flutter application, which will randomly change its interface color on tapping a button.
## Step 1. Create a Flutter project
To create a Flutter project,

1. Run IntelliJ IDEA.
2. In the welcome window, click **Create New Project** or select **File** > **New** > **Project** from the IDE main window.
3. Select **Flutter** from the left pane of the opened window.
    
    > The **Flutter** section is available only if the Flutter plugin has been [installed](install.md) for the IDE.
    
4. Click **Install SDK** and select a folder to store the Flutter SDK files.

      > Alternatively, you can install the SDK from the official Flutter [website](https://flutter.io/docs/get-started/install).
      
	After the SDK is installed, click **Next**.
5. Specify the project name.
	
	> The project name should be in lower case and cannot contain spaces and any special character but underscores.
   
    On the same page, you may also change the path to your application and specify the organisation name if a project is going to be published. You may also select a programming language, which will be used in Android and iOS modules of the project. For our first app, we will leave the default settings.

6. Click **Finish** and wait until the project is created.
7. [Run](run_app.md) the demo application that has been created by default in the **lib/main.dart** file. Try to use the [hot reload](hot_reload.md) function with the demo app.
3. Delete all content of **lib/main.dart**, so we can add a code of our first app from scratches.


##Step 2. Import packages
In our app, we will use Flutter material design widgets from the [material](https://docs.flutter.io/flutter/material/material-library.html) library. To use the library, add the following string:

	import 'package:flutter/material.dart';

We also need to import an external package [random_color](https://pub.dartlang.org/packages/random_color), which will be used for random color generation.


> Find more usful packages on the [Flutter Packages website](https://pub.dartlang.org/flutter/).

To import an external package,

1. Open the **pubsec.yaml** file from the root folder of the project.
2. Add the package and its version to the dependencies list:
		
		dependencies:
		flutter:
		 sdk: flutter
		random_color: ^1.0.3
 
3. Pull the package into your project by clicking **Get Packages** from the top right corner of the code editor when **pubsec.yaml** is open, or select **Toos** > **Flutter** > **Packages Get** from the main menu.
4. Import the package in **main.dart**:

		import 'package:random_color/random_color.dart'

##Step 3. Add a stateless widget
We will add a subclass of [StatelessWidget](https://docs.flutter.io/flutter/widgets/StatelessWidget-class.html). Stateless widgets do not have any state that could be changed by user interactions. This class will be a root of our application.

1. Type `stless` to add the **StatelessWidget** class structure from [life templates](life_templates.md). The following class structure will appear:

		  class  extends StatelessWidget {
		  @override
		  Widget build(BuildContext context) {
		    return Container();
		    }
		  }

    Add the name of the class:

		  class RandomColors extends StatelessWidget {
		  @override
		  Widget build(BuildContext context) {
		    return Container();
		    }
		  }

1. Every widget provides the **build()** method, which returns lower level widgets. Our **build()** method will return the [MaterialApp](https://docs.flutter.io/flutter/material/MaterialApp-class.html) widget, which will serve as a container for material design widgets that we will add later:

		class RandomColorApp extends StatelessWidget {
		  @override
		  Widget build(BuildContext context) {
		    return MaterialApp(
		      title: 'Random Color App',
		    );
		  }
		}


1. Add the **main()** method before the **RandomColorApp** class code and after the import links:

    	void main() => runApp(RandomColorApp());


## Step 4. Add a stateful widget
Unlike a stateless widget, every stateful widget has a state. 
We will create a subclass of the [StatefulWidget](https://docs.flutter.io/flutter/widgets/StatefulWidget-class.html) class and its state—sublass of the [State](https://docs.flutter.io/flutter/widgets/State-class.html) class.

1. Type `stful` to add the **StatefulWidget** class structure from [life templates](life_templates.md). The following class structure will appear:

		class  extends StatefulWidget {
		  @override
		  _State createState() => _State();
		}
		
		class _State extends State<> {
		  @override
		  Widget build(BuildContext context) {
		    return Container();
		  }
		}
Rename the created classes: 

		class RandomColorHomePage extends StatefulWidget {
		  @override
		  State createState() => RandomColorHomePageState();
		}
		
		class RandomColorHomePageState extends State<RandomColorHomePage> {
		  @override
		  Widget build(BuildContext context) {
		    return Container();
		  }
		}
	
1. Add the created **RandomColorHomePage** class as a child widget for the **RandomColorApp** class created in Step 3:

		class RandomColorApp extends StatelessWidget {
		  @override
		  Widget build(BuildContext context) {
		    return MaterialApp(home: RandomColorHomePage());
		  }
		}

1. Add the **setState()** method for the **RandomColorHomePageState** class. This method will generate a random color using external package **random_color** imported in Step 2.

		class RandomColorHomePageState extends State<RandomColorHomePage> {
		  Color _currentColor = RandomColor().randomColor();
		
		  @override
		  void setState(fn) {
		    _currentColor = RandomColor().randomColor();
		    super.setState(fn);
		  }

		  @override
		  Widget build(BuildContext context) {
		    return Container();
		  }
		}

1. In the **build()** method of the **RandomColorHomePageState** class, add the [Scaffold](https://docs.flutter.io/flutter/material/Scaffold-class.html) widget containing [AppBar](https://docs.flutter.io/flutter/material/AppBar-class.html), [Text](https://docs.flutter.io/flutter/widgets/Text-class.html) in the center of the screen and [FloatingActionButton](https://docs.flutter.io/flutter/material/FloatingActionButton-class.html):

		class RandomColorHomePageState extends State<RandomColorHomePage> {
		  @override
		  Widget build(BuildContext context) {
		    return Scaffold(
		      appBar: AppBar(
		        title: Text('Random Color'),
		      ),
		      body: Center(
		        child: Text('Current color'),
		      ),
		      floatingActionButton: FloatingActionButton(
		        onPressed: null,
		        tooltip: 'Change color',
		        child: Icon(Icons.colorize),
		      ),
		    );
		  }
		}

5. [Run](run_app.md) the application, or [reload](hot_reload.md) it if it is running. The app will look this way:

	<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/widgets.png" alt="drawing" width="300" style:"margin-bottom:15px"/>

##Step 5. Change the widgets state
On tapping the floating button, our app will change the color of its widgets and display the name of the current color in the center of the screen.

1. To generate the current color value every time when the button is tapped, set the **setState()** method as a value of the **onPressed** property of the **FloatingActionButton** widget:

	
		  floatingActionButton: FloatingActionButton(
		    onPressed: () {
          	 setState(() {});
          },


1. Set the value of the **backgroundColor** property for the **Scaffold**, **AppBar** and **FloatingActionButton** widgets (for **Scaffold**, set the color value with transparency):

		 @override
		  Widget build(BuildContext context) {
		    return Scaffold(
		      backgroundColor: _currentColor.withAlpha(150),
		      appBar: AppBar(
		        title: Text('Random Color'),
		        backgroundColor: _currentColor,
		      ),
		      body: Center(
		        child: Text('Current color'),
		      ),
		      floatingActionButton: FloatingActionButton(
		        onPressed: null,
		        tooltip: 'Change color',
		        child: Icon(Icons.colorize),
		        backgroundColor: _currentColor,
		      ),
		    );
		  }

1. Add the current color name under the "Current color" text. To do this, you will need to add a second **Text** widget and wrap both **Text** widgets  with the [Column](https://docs.flutter.io/flutter/widgets/Column-class.html) widget. 

	> You can use [Flutter Outline](flutter_outline.md) to wrap a widget with column automatically. To do this, select a widget in the **Flutter Outline** window and run the **Wrap with Column** command from toolbar or context menu.

	Additionally, format text size and color and center the text vertically by using the **mainAxisAlignment** property of the **Column** widget:

		  body: Center(
		    child: Column(
		      mainAxisAlignment: MainAxisAlignment.center,
		      children: <Widget>[
		        Text(('Current color'),
		            style: TextStyle(
		              fontSize: 20,
		              color: Color.fromARGB(255, 255, 255, 255),
		            )),
		        Text(
		          (getColorNameFromColor(_currentColor).getName),
		          style: TextStyle(
		            fontSize: 36,
		            color: Color.fromARGB(255, 255, 255, 255),
		          ),
		        )
		      ],
		    ),
		  ),
	
4. Reload the application. You will get the following result:

	<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/result.png" alt="drawing" width="300" style:"margin-bottom:15px"/>

Your app interface will have a random color. The widgets color will change on tapping the floating button.
##Source code
You can review the code of the created app here:

- [main.dart](src/main.dart)
- [pubspec.yaml](src/pubspec.yaml)
##Tips
- Use the **Reformat Code with dartfmt** command of the code editor context menu to correct the formatting of your code, which may be skewed after pasting code snippets.
- Use the [Dart Analysis](dart_analysis.md) window to review the errors which may appear when editing the code.
- Use [Flutter Outline](flutter_outline.md) to easily navigate through the widgets tree, change widgets hierarchy, edit widgets layout, etc.
- Use [Flutter Inspector](flutter_inspector.md) to explore the widgets hierarchy and debug possible layout issues.
- Find more information on useful Flutter plugin functions in the [Flutter Plugin Tools](flutter_tools.md) section.

