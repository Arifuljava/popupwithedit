/*
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class genqrcode extends StatefulWidget {
  const genqrcode({Key? key}) : super(key: key);

  @override
  State<genqrcode> createState() => _GenQrCodeState();
}
class _GenQrCodeState extends State<genqrcode> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Code Generator'),
        ),
        body: Center(
          child: QRCodeGenerator(),
        ),
      ),
    );
  }
}

class QRCodeGenerator extends StatefulWidget {
  @override
  _QRCodeGeneratorState createState() => _QRCodeGeneratorState();
}

class _QRCodeGeneratorState extends State<QRCodeGenerator> {
  bool visible= false;
  String text = '';



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child:  GestureDetector(
            onTap: (){
              print("tapped");
              visible= true;
            },
            child: QrImageView(
              data: text,
              version: QrVersions.auto,
              size: 200.0,
            ),

          )
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 20),
            padding: EdgeInsets.all(10),
            child: SizedBox(

              child: TextField(
                onChanged: (value) {
                  setState(() {
                    text = value;
                    print(value);
                  });
                },
                decoration: InputDecoration(
                    hintText: 'Enter text',
                    border: OutlineInputBorder()
                ),
              ),
            ),
          ),

        ),
        SizedBox(height: 20),


      ],
    );
  }
}
 */


/*
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class genqrcode extends StatefulWidget {
  const genqrcode({Key? key}) : super(key: key);

  @override
  State<genqrcode> createState() => _GenQrCodeState();
}
String text = '';
TextEditingController textEditingController=new  TextEditingController();
class _GenQrCodeState extends State<genqrcode> {
  FocusNode _textFieldFocusNode = FocusNode();
  bool isTextFieldVisible = false;


  @override
  void dispose() {
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Code Generator'),
        ),
        body: Center(
          child: QRCodeGenerator(
            textFieldFocusNode: _textFieldFocusNode,
            isTextFieldVisible: isTextFieldVisible,
            toggleTextFieldVisibility: () {
              setState(() {
                isTextFieldVisible = !isTextFieldVisible;
              });
            },
            onTextChanged: (value) {
              setState(() {
                text = value;
              });
            },
          ),
        ),
      ),
    );
  }
}

class QRCodeGenerator extends StatelessWidget {
  final FocusNode textFieldFocusNode;
  final bool isTextFieldVisible;
  final VoidCallback toggleTextFieldVisibility;
  final ValueChanged<String> onTextChanged;

  const QRCodeGenerator({
    Key? key,
    required this.textFieldFocusNode,
    required this.isTextFieldVisible,
    required this.toggleTextFieldVisibility,
    required this.onTextChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              textFieldFocusNode.unfocus();
              toggleTextFieldVisibility();
            },
            child: QrImageView(
              data: text,
              version: QrVersions.auto,
              size: 200.0,
            ),
          ),
        ),
        Visibility(
          visible: isTextFieldVisible,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,

                      child: Container(

                        alignment: Alignment.center,
                        child: TextField(
                          maxLines: 1,




                          focusNode: textFieldFocusNode,
                          onChanged: onTextChanged,
                          decoration: InputDecoration(
                            hintText: 'Enter text',
                            filled: true,
    fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.white
                              )
                            ),
                          ),
                          onEditingComplete: () {
                            textFieldFocusNode.unfocus();
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");

                      },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),
                          ),
                        ),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
 */


import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class genqrcode extends StatefulWidget {
  const genqrcode({Key? key}) : super(key: key);

  @override
  State<genqrcode> createState() => _GenQrCodeState();
}

String text = '';
TextEditingController textEditingController = TextEditingController();

class _GenQrCodeState extends State<genqrcode> {
  FocusNode _textFieldFocusNode = FocusNode();
  bool isTextFieldVisible = false;

  @override
  void dispose() {
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Code Generator'),
        ),
        body: Center(
          child: QRCodeGenerator(
            textFieldFocusNode: _textFieldFocusNode,
            isTextFieldVisible: isTextFieldVisible,
            toggleTextFieldVisibility: () {
              setState(() {
                isTextFieldVisible = !isTextFieldVisible;
              });
            },
            onTextChanged: (value) {
              setState(() {
                text = value;
              });
            },
          ),
        ),
      ),
    );
  }
}

class QRCodeGenerator extends StatelessWidget {
  final FocusNode textFieldFocusNode;
  final bool isTextFieldVisible;
  final VoidCallback toggleTextFieldVisibility;
  final ValueChanged<String> onTextChanged;

  const QRCodeGenerator({
    Key? key,
    required this.textFieldFocusNode,
    required this.isTextFieldVisible,
    required this.toggleTextFieldVisibility,
    required this.onTextChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              textFieldFocusNode.unfocus();
              toggleTextFieldVisibility();
            },
            child: QrImageView(
              data: text,
              version: QrVersions.auto,
              size: 200.0,
            ),
          ),
        ),
        Visibility(
          visible: isTextFieldVisible,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: Container(
                        alignment: Alignment.center,
                        child: TextField(
                          maxLines: 1,
                          focusNode: textFieldFocusNode,
                          onChanged: onTextChanged,
                          decoration: InputDecoration(
                            hintText: 'Enter text',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onEditingComplete: () {
                            textFieldFocusNode.unfocus();
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: GestureDetector(
                      onTap: () {
                        toggleTextFieldVisibility();
                        print("clicked");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 10,
                          left: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
