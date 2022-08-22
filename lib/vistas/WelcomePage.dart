import 'package:flutter/material.dart';
import 'package:proyecto_zulu/vistas/menu.dart';
import 'package:proyecto_zulu/vistas/menu_p.dart';
import 'package:proyecto_zulu/vistas/localidad.dart';
import 'package:proyecto_zulu/vistas/signinpage.dart';
import 'package:proyecto_zulu/widgets/wcWidgets.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  double screenHeight = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: 280,
        height: screenHeight * 9,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 240, 240, 240),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Spacer(flex: 2),
            titleText("Zulu Burger"),
            const Spacer(flex: 1),
            subTitleText(
                "La mejor hamburgueseria y parrila de colombia "),
            const Spacer(flex: 2),
            const Image(image: AssetImage("assets/burger.jpg")),
            const Spacer(),
            largeButton(() {
              //Aqui va la función
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return signinpage();
                  },
                ),
              );
            }, Color.fromARGB(0, 240, 240, 240), "Registrarse"),
            const Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const menu();
                  },
                ),
              );
            }, Color.fromARGB(255, 221, 221, 221), "Menu hamburguesas"),
            const Spacer(),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const menu_p();
                  },
                ),
              );
            }, Color.fromARGB(255, 228, 228, 228), "Menu parrilla "),
            const Spacer(),
            largeButton(() {
              //Aqui va la función para ver las sedes
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const localidad();
                  },
                ),
              );
            }, Color.fromARGB(0, 250, 250, 250), "localidad"),
          ],
        ),
      ),
    );
  }
}
