import 'package:flutter/material.dart';

//https://appdesignpro.blogspot.com/2023/04/lay-out-multiple-widgets-vertically-and.html
// 2 example
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Header',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: constraints.maxWidth * 0.3,
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            'Side Menu',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey[200],
                          child: Center(
                            child: Text(
                              'Main Content',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Footer',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
class ColumnRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.grey[300],
            child: Text(
              'Header',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Item $index'),
                  subtitle: Text('Description of item $index'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Handle item tap
                  },
                );
              },
              itemCount: 100,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.grey[300],
            child: Text(
              'Footer',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
