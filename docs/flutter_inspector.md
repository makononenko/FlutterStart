#Flutter Inspector
This tool helps to explore the widgets layout and properties and debug layout and performance issues.

##Explore widgets layout and properties

With **Flutter Inspector**, you can navigate through the widgets selecting them in the tree or on the device screen.
To enable interaction between the widget tree and your mobile device (or emulator), click ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fi_selectMode.png) in the **Flutter Inspector** toolbar:

<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fi_select.png" alt="drawing" width="1000" style:"margin-bottom:15px"/>

To enable selecting widgets from the device, click ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fi_search.png) on the device screen.

For every selected widget, **Flutter Inspector** displays the list of available properties.

When a widget or a property is selected in **Flutter Inspector**, its code is highlighted in the code editor. You can also go to the source code of the selected widget/property by using the following commands of context menu:

- **Jump to Source**. Go to your implementation of a widget/property. 
- **Jump to Type**. Go to the source code of a widget/property from a library where it is implemented.

##Debug layout and performance issues
For debugging widget layout issues, you can use the **Render Tree** tab of **Flutter Inspector**. This view displays more detailed information on how widgets are rendered:

<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fi_render.png" alt="drawing" width="1000" style:"margin-bottom:15px"/>

Switch on the **Debug Paint** mode by clicking ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fi_debugPaint.png). In this mode, auxiliary lines and borders will appear on the device screen, which will help to better understand how the widgets are laid out:

<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fi_debugPaintSample.png" alt="drawing" width="300" style:"margin-bottom:15px"/>

To examine the application performance, you may use the Performance tab of Flutter Inspector:

<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/fi_performance.png" alt="drawing" width="300" style:"margin-bottom:15px"/>

Please visit the official Flutter website to get more information on [debugging](https://flutter.io/docs/testing/debugging) and [analyzing performance](https://flutter.io/docs/testing/ui-performance) of Flutter applications.










