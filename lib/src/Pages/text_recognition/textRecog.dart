import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import '../googleColors.dart';

class TextRecogPage extends StatefulWidget {
  @override
  _TextRecogPageState createState() => _TextRecogPageState();
}

class _TextRecogPageState extends State<TextRecogPage>
    with SingleTickerProviderStateMixin {
  File pickedImage;
  bool isImageLoaded = false;
  List<String> imageText = ['PlaceHolder Text'];

  final ImageLabeler labeler = FirebaseVision.instance.imageLabeler();
  AnimationController animationController;
  Animation<double> scaleAnimation;

  Future pickImageCamera() async {
    var tempStore = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      pickedImage = tempStore;
      isImageLoaded = true;
    });
  }

    Future pickImageGallery() async {
    var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      pickedImage = tempStore;
      isImageLoaded = true;
    });
  }

  Future readText() async {
    FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(pickedImage);
    TextRecognizer text = FirebaseVision.instance.textRecognizer();
    VisionText readText = await text.processImage(ourImage);

    for (TextBlock block in readText.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement word in line.elements) {
          print(word.text);
          setState(() {
            imageText.add(word.text);
          });
        }
      }
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

    /*_pickImage(ImageSource source) async {
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
  }*/

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
                                onTap: () => pickImageCamera(),
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
                                onTap: () => pickImageGallery(),
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
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
          child: Stack(
            children: <Widget>[
              RaisedButton(
                color: googleColor.redColor,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
                onPressed: () {
                  if (googleColor.googleColor == googleColor.transparentColor)
                    changeColor(googleColor.redColor);
                },
                child: Container(),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      margin: EdgeInsets.all(35),
                      child: Text(
                        'Text Detection',
                        style: textTheme.headline.copyWith(color: Colors.white),
                      )))
            ],
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 200)),
      body: Column(
        children: <Widget>[
          isImageLoaded
              ? Center(
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(pickedImage), fit: BoxFit.cover)),
                  ),
                )
              : Container(),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: googleColor.googleColor,
              onPressed:() async {
                    dialogShow(textTheme);
                    await animationController.forward(from: 0.0);
                  },
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    'Pick Image',
                    style: textTheme.subhead.copyWith(color: Colors.white),
                  ))),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: googleColor.googleColor,
              onPressed: readText,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    'Read Image',
                    style: textTheme.subhead.copyWith(color: Colors.white),
                  ))),
          SizedBox(
            height: 10.0,
          ),
          Flexible(
            child: Center(
              child: ListView.builder(
                itemCount: imageText.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Center(child: new Text(imageText[index]));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
