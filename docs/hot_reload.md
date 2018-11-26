# Hot Reload
With this function, you can reload the code of your running application without restarting it and losing its current state.

To use hot reload,

1. While your app is [running](run_app.md), make some changes in your code.
1. Save these changes with the **Save All** command or click the **Hot Reload** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/hotReload.png) button in the IntelliJ IDEA toolbar.

	> You can disable performing hot reload on save in Flutter settings (**File** > **Settings** > **Languages&Frameworks** > **Flutter** in Windows or **IntelliJ IDEA** > **Preferences** > **Languages&Frameworks** > **Flutter** in macOS). To do this, deselect the **Perform hot reload on save** checkbox.

## Example ##
1. Run the standard demo app (the code added by default in **lib/main.dart** when [creating](create_app.md) a new Flutter project). Click the floating button to change the number displayed on the screen:


    <img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/demoBefore.png" alt="Before layout change" width="300" style:"margin-bottom:15px"/>


1. Change the color of the demo app by replacing this code

		theme: ThemeData(
			primarySwatch: Colors.blue,
		),

	with this one:

		theme: ThemeData(
			primarySwatch: Colors.green,
		),

1. Save the changes or click **Hot Reload** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/hotReload.png). You will see that the application color has changed, whereas the  number on the screen remains the same:

    <img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/demoAfter.png" alt="After layout change" width="300" style:"margin-bottom:15px"/>