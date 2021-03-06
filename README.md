# Testing the Flutter Provider Pattern

This project has been created to test the Flutter Provider Pattern using the default Counter app provided by Flutter when creating a new project.

The project is based on the article: "How to Use the Provider Pattern in Flutter" from Free Code Camp
[How to Use the Provider Pattern in Flutter](https://www.freecodecamp.org/news/provider-pattern-in-flutter/)

## Steps to implement Provider Pattern

1- Create Notifier class

- class X extends ChangeNotifier
- use notifyListeners()

2- Declare Provider wrapping MaterialApp widget with MultiProvider

````dart
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Counter(),
        ),
      ],
````

3- Convert MyHomeApp widget in Statelesswidget and remove setState()

4- Inside the onPressed function, we perform an action using the specific Provider type (Counter in this case).

** listen: false because don't need for listening but only perform an action

````dart
    Provider.of<Counter>(context, listen: false).incrementCounter();
````

5- Inside the build method, we listen for updates using our provider of type Counter

** listen: true (by default). We need to get/listen for updates

````dart
    int _counter = Provider.of<Counter>(context).getCounter;
````
