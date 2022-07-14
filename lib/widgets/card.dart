import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String image;

  const CardWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
           color: const Color.fromRGBO(255, 244, 244, 1)),
          child: Row(children: [
            Container(
                decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            )),
            Spacer(),
            Container(
                decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            )),
          ])),
      Column(children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.55 * 0.83,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: Image.asset(image).image, fit: BoxFit.fill)))
      ]),
    ]);
  }
}
