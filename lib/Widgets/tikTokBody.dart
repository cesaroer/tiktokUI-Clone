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
            _interactionButtons(),
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
        SizedBox(height: 8.0)
      ],
    );
  }

  Widget _interactionButtons() {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.white,
                )),
            child: ClipOval(
              child: Image.network(
                'https://pbs.twimg.com/media/ECZzynSWwAA9M5m.jpg',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Image.asset("icons/corazon.png"),
          SizedBox(height: 5.0),
          Text("168.2k", style: TextStyle(fontSize: 10.0, color: Colors.white)),
          SizedBox(height: 20.0),
          Image.asset("icons/comentarios.png"),
          SizedBox(height: 5.0),
          Text("134", style: TextStyle(fontSize: 10.0, color: Colors.white)),
          SizedBox(height: 20.0),
          Image.asset("icons/compartir.png"),
          SizedBox(height: 5.0),
          Text("14", style: TextStyle(fontSize: 10.0, color: Colors.white)),
        ],
      ),
    );
  }
}
