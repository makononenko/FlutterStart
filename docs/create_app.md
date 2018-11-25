#Creating a Flutter application
We will create a simple Flutter application, which will randomly change its interface color on tapping a button.
## Step 1. Create a Flutter project
To create a Flutter project,

1. Run IntelliJ IDEA.
1. In the welcome window, click **Create New Project** or select **File** > **New** > **Project** from the IDE main window.
1. Select **Flutter** from the left pane of the opened window.
    
    > The **Flutter** section is available only if the Flutter plugin has been [installed](install.md) for the IDE.
    
1. Click **Install SDK** and select a folder to store the Flutter SDK files.

      > Alternatively, you can install the SDK from the official Flutter [website](https://flutter.io/docs/get-started/install).
      
	After the SDK is installed, click **Next**.
1. Specify the project name.
	
	> The project name should be in lower case and cannot contain spaces and any special character but underscores.
   
    On the same page, you may also change the path to your application and specify the organisation name if a project is going to be published. You may also select a programming language, which will be used in Android and iOS modules of the project. For our first app, we will leave the default settings.

1. Click **Finish** and wait until the project is created.
2. [Run](run_app.md) the demo application, that has been created by default in the **lib/main.dart** file. Try to use the [Hot Reload](hot_reload.md) function with the demo app.
3. Delete all content of **lib/main.dart**, so we can add a code of our first app from scratches.


##Step 2. Import packages
In our app, we will use Flutter widgets from [material](https://docs.flutter.io/flutter/material/material-library.html) library. To use the library, add the following string:

```dart
import 'package:flutter/material.dart';
```

We also need to import an external package [random_color](https://pub.dartlang.org/packages/random_color), which will be used for random color generation.


> Find more packages on the [Flutter Packages website](https://pub.dartlang.org/flutter/).

To import an external package,

1. Open the **pubsec.yaml** file from the root folder of the project.
2. Add the package and its version to the dependencies list:
 
        ```c
        printf("Hello, World!");
        ```
		
		 ```dart
		 dependencies:
		 flutter:
		  sdk: flutter
		 random_color: ^1.0.3
		 ```

1.  Pull the package into your project by clicking **Get Packages** from the top right corner of the code editor when **pubsec.yaml** is open, or select **Toos** > **Flutter** > **Packages Get** from the main menu.
3. Import the package in main.dart:

    ```dart
    import 'package:random_color/random_color.dart'
    ```



##Step 2. Adding a [StatelessWidget](https://docs.flutter.io/flutter/widgets/StatelessWidget-class.html)
We will add a subclass of the StatelessWidget class. Stateless widgets do not have a state which could be changed by user interactions. This class will be a root of our application.


1. You can use life templates to quickly add basic class structures, which you will elaborate later. To create a subclass of StatelessWidget, just type stless and select the New Stateless widget suggestion. The following class structure will appear:

    ```
  class  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

    Add the name of your class:
    ```
  class RandomColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
   ```


1. Every widget provides the [build()](https://docs.flutter.io/flutter/widgets/StatelessWidget/build.html) method which should return lower level widgets. Our build() method will return the MaterialApp widget that will server as a container for material design widgets which we will add later:
```
class RandomColorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color App',
    );
  }
}
```

1. Add the main() method before the RandomColorApp class code and after the import links:

    ```
    void main() => runApp(RandomColorApp())


## Step 2. Adding a stateful widget.
Unlike Stateless widgets, every stateful widget has a state. 
We will create a subclass of the StatefulWidget class (RandomColorHomePage), and its state, the sublass of the State class (RandomColorHomePageState).

1. Type stful to add the State code structure:

		```
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
		```
and rename the created classes: 

		```
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
		```

	> Use the Dark Analysis window to review the code errors which may appear when editing the code.
	


1. Add the created RandomColorHomePage class as a child widget for the RandomColorApp class created in Step 2:

		```
		class RandomColorApp extends StatelessWidget {
		  @override
		  Widget build(BuildContext context) {
		    return MaterialApp(home: RandomColorHomePage());
		  }
		}
		```
1. Add the setState() method to the RandomColorHomePageState class. This method will generate a rundom color using the external package rundom_color imported in Step 1.

		```
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
		```


1. In the build() method of the RandomColorHomePageState class, add the Scaffold widget containing an AppBar, text in the center of the screen and  a FloatingActionButton:

		```
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

	[Run](run_app.md) the application, or [reload](hot_reload.md) it if it is running. The app will look this way:
	<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/widgets.png" alt="drawing" width="300" style:"margin-bottom:15px"/>

##Step 4. Changing the widgets state
On tapping the FloatingActionButton, the app will change the color of its widgets and also display the name of the current color.

1. To generate the current _currentColor value every time when the button is pressed, add the setState() method to the onPressed callback of the FloatingActionButton:

		```
		      floatingActionButton: FloatingActionButton(
		        onPressed: () {
          		  setState(() {});
       		  },

		```

1. Set the value of the backgroundColor property for the Scaffold, AppBar and FloatingActionButton widgets (for Scaffold set the color value with transparency):

		```
		 
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
		```


1. Add the the current color name under the 'Current color' text. To do this you will need to add the Column widget and put the both Text widgets there:

		```
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
		
		```
	> You can use Flutter Outline to add the Column code automatically. To do this, select Text widget in the Flutter Outline window and run the Wrap with Column command from the toolbar or context menu.
	
	Reload the application. You will get the following result:

	<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/result.png" alt="drawing" width="300" style:"margin-bottom:15px"/>

	The widget color will change when tapping the floating button.

##Source code
You can review the code of the created app here:

- [main.dart](../main.dart)
- [pubspec.yaml](../pubspec.yaml)

Use the [Flutter Outline](flutter_outline.md) tool to easily navigate through the widget tree, change widgets hierarchy, edit widgets layout, etc.