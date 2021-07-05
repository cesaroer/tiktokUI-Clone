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
        Column(
          children: [
            _topNav(),
          ],
        ),
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

  Widget _topNav() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _topItem("Siguiendo", Colors.white),
          SizedBox(width: 30.0),
          _topItem("Para tí", Colors.white54),
        ],
      ),
    );
  }

  Widget _topItem(String title, Color color) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18.0, color: color, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8.0,
        ),
      ],
    );
  }
}
