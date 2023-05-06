import 'package:flutter/material.dart';

class MyAppwrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap Demo'),
        ),
        body: Wrap(
          direction: Axis.horizontal,
          spacing: 8.0,
          runSpacing: 4.0,
          children: <Widget>[
            Chip(
              label: Text('Tag 1'),
              backgroundColor: Colors.red,
            ),
            Chip(
              label: Text('Tag 2'),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text('Tag 3'),
              backgroundColor: Colors.green,
            ),
            Chip(
              label: Text('Tag 4'),
              backgroundColor: Colors.orange,
            ),
            Chip(
              label: Text('Tag 5'),
              backgroundColor: Colors.purple,
            ),
            Chip(
              label: Text('Tag 1'),
              backgroundColor: Colors.red,
            ),
            Chip(
              label: Text('Tag 2'),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text('Tag 3'),
              backgroundColor: Colors.green,
            ),
            Chip(
              label: Text('Tag 4'),
              backgroundColor: Colors.orange,
            ),
            Chip(
              label: Text('Tag 5'),
              backgroundColor: Colors.purple,
            ),
            Chip(
              label: Text('Tag 1'),
              backgroundColor: Colors.red,
            ),
            Chip(
              label: Text('Tag 2'),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text('Tag 3'),
              backgroundColor: Colors.green,
            ),
            Chip(
              label: Text('Tag 4'),
              backgroundColor: Colors.orange,
            ),
            Chip(
              label: Text('Tag 5'),
              backgroundColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}



class MyApp2Wrap extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2Wrap> {
  List<String> _tags = [    'Flutter',    'Dart',    'Mobile',    'App Development',    'UI Design',    'Widgets',    'Layouts',    'Responsive',    'Navigation',    'Animations',  ];
  List<String> _selectedTags = [];

  void _onTagSelected(String tag) {
    setState(() {
      if (_selectedTags.contains(tag)) {
        _selectedTags.remove(tag);
      } else {
        _selectedTags.add(tag);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap Demo'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16.0),
              child: Text(
                'Select tags:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: _tags.map((tag) {
                return FilterChip(
                  label: Text(tag),
                  selected: _selectedTags.contains(tag),
                  onSelected: (selected) {
                    _onTagSelected(tag);
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Text(
                'Selected tags: ${_selectedTags.join(", ")}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}