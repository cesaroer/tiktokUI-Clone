import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Widgets/tikTokBody.dart';

void main() {
  runApp(PantallaPrincipal());
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // Hacemos wrapp del safeArea con Container
          // Para "cambiar" el color del statusbar
          color: Colors.black,
          child: SafeArea(
            child: UITikTok(),
          ),
        ),
        bottomNavigationBar: _bottomNav(),
      ),
    );
  }

  Widget _bottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: [
        _navBarItems(Image.asset("icons/inicio.png"), "Inicio"),
        _navBarItems(Image.asset("icons/tendencias.png"), "Tendencias"),
        BottomNavigationBarItem(
          tooltip: "Start the fun!",
          icon: Image.asset("icons/plus.png"),
          label: "",
        ),
        _navBarItems(Image.asset("icons/bandeja.png"), "Bandeja"),
        _navBarItems(Image.asset("icons/yo.png"), "Yo"),
      ],
    );
  }

  BottomNavigationBarItem _navBarItems(Image image, String title) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 3.0),
        child: image,
      ),
      label: title,
    );
  }
}
