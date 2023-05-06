
import 'package:flutter/material.dart';
class MyHomePageFlex extends StatefulWidget {
  @override
  _MyHomePageFlexState createState() => _MyHomePageFlexState();
}

class _MyHomePageFlexState extends State<MyHomePageFlex> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[    Center(      child: Text('Home'),    ),    Center(      child: Text('Search'),    ),    Center(      child: Text('Notifications'),    ),    Center(      child: Text('Profile'),    ),  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Bottom Navigation Bar'),
      ),
      body: _pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => _onItemTapped(1),
            ),
            SizedBox(width: 32),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexible Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePageFlex(),
    );
  }
}
*/

