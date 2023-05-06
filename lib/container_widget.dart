import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:
        SingleChildScrollView(
          child: Column(
            children: [


              Container(
                width: 200,
                height: 80,
                color: Colors.blue,
                child: const Text(
                    'Here is a basic example of using the Container widget'),
              ),



              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Text('Adding Padding and Margin'),
              ),


              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.lightBlueAccent, Colors.lime]
                    )
                ),
                child: const Text(
                  'Setting a Gradient Background'
                ),
              ),



              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 3,
                        color: Colors.redAccent
                    )
                ),
                child: const Text(
                  'Adding a Border',
                ),
              ),



              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Text(
                  'Adding Rounded Corners',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),



              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/200'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Text('Using a Network Image:'
                ),
              ),


              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: const Text('Using a Box Shadow'),
              ),



              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                transform: Matrix4.rotationZ(0.1),
                child: const Text('Transform',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),



              Container(
                width: double.infinity,
                height: 200,
                margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage('assets/images/bg.webp'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Welcome to my App',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Get Started'),
                    ),
                  ],
                ),
              ),

            ],
          ),
        )
      );

  }
}
