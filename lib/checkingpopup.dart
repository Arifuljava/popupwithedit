



import 'package:flutter/material.dart';

class checkingpopup extends StatefulWidget {
  const checkingpopup({super.key});

  @override
  State<checkingpopup> createState() => _checkingpopupState();
}

class _checkingpopupState extends State<checkingpopup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Dialog'),
      ),
      body: Center(
        child: Builder(
          builder: (context) => ElevatedButton(
            child: Text('Show Dialog'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Text Input Dialog'),
                    content: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter some text...',
                      ),
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      ElevatedButton(
                        child: Text('OK'),
                        onPressed: () {
                          // Handle button press
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}