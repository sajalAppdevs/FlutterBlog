import 'dart:async';

import 'package:flutter/material.dart';

class MyAppFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexible Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flexible Demo'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Flexible Box 1',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Flexible Box 2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Flexible Box 3',
                    style: TextStyle(color: Colors.white, fontSize: 20),
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














class MyAppFlecList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexible List View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> _items = [    'Item 1',    'Item 2',    'Item 3',    'Item 4',    'Item 5',    'Item 6',    'Item 7',    'Item 8',    'Item 9',    'Item 10',  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible List View'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/bg.webp',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _items[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}




//......................................................

class MyAppFlex5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flexible Login Screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/login_logo.png',
                      height: 120.0,
                      width: 120.0,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                    SizedBox(height: 16.0),
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot Password?'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//................................................................................
class MyAppFlexProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          padding: EdgeInsets.all(16.0),
          children: [
            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 2,
                  child: ProductCard(
                    title: 'Product 1',
                    image: AssetImage('assets/images/bg.webp'),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Product 1',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Repeat the above Flex widget for the other products
            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 2,
                  child: ProductCard(
                    title: 'Product 2',
                    image: AssetImage('assets/images/bg.webp'),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Product 2',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 2,
                  child: ProductCard(
                    title: 'Product 3',
                    image: AssetImage('assets/images/bg.webp'),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Product 3',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  flex: 2,
                  child: ProductCard(
                    title: 'Product 4',
                    image: AssetImage('assets/images/bg.webp'),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Product 4',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final ImageProvider image;

  const ProductCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image(image: image),
    );
  }
}
