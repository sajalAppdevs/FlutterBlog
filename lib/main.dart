import 'dart:ui';

import 'package:basic/row_column_widget.dart';
import 'package:basic/stack_widget.dart';
import 'package:basic/wrap_widget.dart';
import 'package:flutter/material.dart';

import 'aspect_ratio.dart';
import 'basic_widget_text.dart';
import 'container_widget.dart';
import 'expanded_widget.dart';
import 'flexible_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
     // home:  VideoDialog(videoUrl: 'https://www.w3schools.com/html/mov_bbb.mp4',),
      home:  BasicWidgetText(),
    );
  }
}



