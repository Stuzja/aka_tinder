
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String image;

  const CardWidget({Key? key, required this.image}) : super(key: key);
////////////
///
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: MediaQuery.of(context).size.height * 0.55,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.07),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(255, 244, 244, 1)),
          child:
          Container(
            alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(255, 244, 244, 1)),
            child: 
            SizedBox(
              height:MediaQuery.of(context).size.height * 0.55 * 0.17,
              child:
            Row(children: [
              Container( height: MediaQuery.of(context).size.height * 0.55 * 0.11,
              width:  MediaQuery.of(context).size.height * 0.55 * 0.11,
                  decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              )),
              const Spacer(),
              Container( height: MediaQuery.of(context).size.height * 0.55 * 0.11,
                width:  MediaQuery.of(context).size.height * 0.55 * 0.11,
                  decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              )),
          ])))),
        Container(
            height: MediaQuery.of(context).size.height * 0.55 * 0.83,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: Image.asset(image).image, fit: BoxFit.fill)))
    ]);
  }
}
