import 'package:flutter/material.dart';

class UITikTok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "images/urona_rolera.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        _blackGradient(),
      ],
    );
  }

  Widget _blackGradient() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.black87,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black12,
            Colors.black26,
            Colors.black54,
            Colors.black87,
          ])),
    );
  }
}
