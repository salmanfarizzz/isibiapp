import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget card() {
  return Container(
    margin: EdgeInsets.all(3.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/berita1.webp",
              fit: BoxFit.cover,
              width: 300.0,
              height: 150,
            ),
          ],
        )),
  );
}
