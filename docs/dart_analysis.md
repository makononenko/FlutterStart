#Dart Analysis
The **Dart Analysys** window shows the results of analysing the Dart code:

<img src="https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/da_window.png" alt="Dart Analysys window" width="500" style:"margin-bottom:15px"/>

It displays errors, warnings and hints, and allows to jump to the source code causing an issue.

##Navigate to source
To navigate to the issue causing code fragment,

- double-click a message
- right-click a message and select **Jump to Source**
- click **Autoscroll to Source** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/da_navigate.png), after that the code will be scrolled to the target fragment on clicking a message in the list
##Sort  messages
The messages can be sorted by their description or location. To do this, click the **Description** or **Location** column header.

At the same time, you can group the messages by their severity type (error, warning or hints). To do this, click **Group by Severity**
 ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/da_sort.png).

##Filter messages
To set up the filter, click **Filter** ![](https://raw.githubusercontent.com/makononenko/FlutterStart/master/docs/img/da_filter.png).

You can filter the messages by:

- their severity type (error, warning or hints)
- the files where they have been detected (whole project, current content root, current Dart package, current directory, current file)
