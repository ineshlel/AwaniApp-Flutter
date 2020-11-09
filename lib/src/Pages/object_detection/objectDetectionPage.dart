import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_tts/flutter_tts.dart'; // Speak up 
import '../googleColors.dart';

class ObjectDetectionPage extends StatefulWidget {
  @override
  _ObjectDetectionState createState() => _ObjectDetectionState();
}

class _ObjectDetectionState extends State<ObjectDetectionPage>
    with SingleTickerProviderStateMixin {
  FlutterTts flutterTts = new FlutterTts();
  final ImageLabeler labeler = FirebaseVision.instance.imageLabeler();
  AnimationController animationController;
  Animation<double> scaleAnimation;

  speakUp(String result) async {
    try {
      await flutterTts.speak('It\'s a $result');
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    scaleAnimation = CurvedAnimation(
        parent: animationController, curve: Curves.elasticInOut);
    googleColor.googleColor = googleColor.redColor;
    super.initState();
  }

  changeColor(Color _color) {
    setState(() => googleColor.googleColor = _color);
  }

  final borderRadius = BorderRadius.circular(12);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
          child: Stack(
            children: <Widget>[
              RaisedButton(
                color: googleColor.googleColor,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
                onPressed: () {
                  if (googleColor.googleColor == googleColor.transparentColor)
                    changeColor(googleColor.redColor);
                  else if (googleColor.googleColor == googleColor.redColor)
                    changeColor(googleColor.yellowColor);
                  else if (googleColor.googleColor == googleColor.yellowColor)
                    changeColor(googleColor.greenColor);
                  else if (googleColor.googleColor == googleColor.greenColor)
                    changeColor(googleColor.blueColor);
                  else
                    changeColor(googleColor.transparentColor);
                },
                child: Container(),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      margin: EdgeInsets.all(35),
                      child: Text(
                        'Object Detection',
                        style: textTheme.headline.copyWith(color: Colors.white),
                      )))
            ],
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 200)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              imageFile != null
                  ? Padding(
                      padding: EdgeInsets.all(16),
                      child: Image.file(
                        imageFile,
                        height: 350,
                      ))
                  : Container(),
              RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: googleColor.googleColor,
                  onPressed: () async {
                    dialogShow(textTheme);
                    await animationController.forward(from: 0.0);
                  },
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Text(
                        'Pick Image',
                        style: textTheme.subhead.copyWith(color: Colors.white),
                      ))),
              imageLabel == null
                  ? Container()
                  : Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            'It\'s a $imageLabel',
                            style: textTheme.display1,
                          )),
                          RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: googleColor.googleColor,
                  onPressed: () {},
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Text(
                        'Save Image',
                        style: textTheme.subhead.copyWith(color: Colors.white),
                      ))),
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }

  dialogShow(TextTheme textTheme) {
    showDialog(
        context: context,
        builder: (context) {
          return ScaleTransition(
            scale: scaleAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Select your choice',
                          style: textTheme.title,
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () => _pickImage(ImageSource.camera),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.camera,
                                      color: googleColor.redColor,
                                      size: 40,
                                    ),
                                    Text(
                                      'Camera',
                                      style: textTheme.body1,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () => _pickImage(ImageSource.gallery),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.image,
                                      color: googleColor.greenColor,
                                      size: 40,
                                    ),
                                    Text(
                                      'Gallery',
                                      style: textTheme.body1,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  final sizedBox = SizedBox(
    width: 20,
  );
  File imageFile;
  String imageLabel;

  _pickImage(ImageSource source) async {
    Navigator.pop(context);
    try {
      final _imageFile = await ImagePicker.pickImage(source: source);
      if (_imageFile != null) {
        showDialog(
            context: context,
            builder: (_) => Center(
                  child: CircularProgressIndicator(
                    backgroundColor: googleColor.googleColor,
                  ),
                ));
        final FirebaseVisionImage visionImage =
            FirebaseVisionImage.fromFile(_imageFile);
        final List<ImageLabel> labels = await labeler.processImage(visionImage);
        Navigator.pop(context);
        if (labels.length > 0) {
          speakUp(labels[0].text);
          imageLabel = labels[0].text;
        } else {
          imageLabel = 'Something went wrong!';
        }
        setState(() {
          imageFile = _imageFile;
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
