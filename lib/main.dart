// ignore_for_file: unnecessary_string_escapes

import 'package:aka_tinder/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExampleHomePage(),
    );
  }
}

class ExampleHomePage extends StatefulWidget {
  const ExampleHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ExampleHomePageState createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage>
    with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "images/image3.jpg",
    "images/image1.jpg",
    "images/image2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.07),
          height: MediaQuery.of(context).size.height * 0.55,
          child: TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: welcomeImages.length,
            stackNum: 3,
            swipeEdge: 3,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.height * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.55,
            minHeight: MediaQuery.of(context).size.height * 0.4,
            cardBuilder: (context, index) {
              return Card(child: CardWidget(image: welcomeImages[index]));
            },
            cardController: CardController(),
          ),
        ),
      ),
    );
  }
}
