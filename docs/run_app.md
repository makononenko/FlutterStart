# Run a Flutter Application
To run a [created](create_project.md) application,

1. Select an Android device from the list of target devices in IntelliJ IDEA toolbar. You may use a physical device connected to your computer as well as a virtual one.

    > If there are no virtual devices available, go to **Tools** > **Android** > **AVD Manager** and [add a virtual device](https://developer.android.com/studio/run/managing-avds).
    > 

1. Select a module which will be running (a **.dart** file containing the **main()** method), by default it is **lib/main.dart**.
1. Click the **Run** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/run.png) button.

Running an application may take a while, but you do not need to run it every time you change your code. To reload the changed code, use the [hot reload](hot_reload.md) function.