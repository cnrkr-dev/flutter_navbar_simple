import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainApptate();
}

class _MainApptate extends State<MainApp> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NavigationBar Sample'),
        ),
        bottomNavigationBar: NavigationBar(
          labelBehavior: labelBehavior,
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "page 1"),
            NavigationDestination(icon: Icon(Icons.person), label: "page 2"),
            NavigationDestination(icon: Icon(Icons.settings), label: "page 3")
          ],
          onDestinationSelected: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
        ),
        body: <Widget>[
          const Card(
            color: Colors.blue,
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child: SizedBox.expand(
              child: Center(
                child: Text('Tab 1',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          const Card(
            color: Color.fromARGB(255, 176, 231, 80),
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child: SizedBox.expand(
              child: Center(
                child: Text('Tab 2',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          const Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child: SizedBox.expand(
              child: Center(
                child: Text('Tab 3',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ][currentPageIndex],
      ),
    );
  }
}
