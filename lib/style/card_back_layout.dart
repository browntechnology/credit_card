import 'package:flutter/material.dart';

class CardBackLayout {
  final String cvv;
  final double width;
  final double height;
  final Color color;

  CardBackLayout({
    required this.cvv,
    required this.width,
    required this.height,
    required this.color,
  });

  Widget layout1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Container(
          color: Colors.black,
          height: 50,
          width: width,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: (width / 4) * 3,
              height: 50,
              color: Colors.grey,
            ),
            Container(
              height: 50,
              width: width / 4,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  cvv.toString(),
                  style: TextStyle(
                      fontSize: 21, fontWeight: FontWeight.w500, color: color),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
