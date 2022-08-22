import 'package:flutter/material.dart';
import 'package:proyecto_zulu/vistas/domicilio.dart';
import 'package:proyecto_zulu/vistas/menu.dart';
import 'package:proyecto_zulu/widgets/wcWidgets.dart';

class signinpage extends StatelessWidget {
  signinpage({Key? key}) : super(key: key);

  double screenHeight = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: 280,
          height: screenHeight * 9,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 239, 239),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            const Image(image: AssetImage("assets/burger.jpg")),
            const Spacer(flex: 2),
            titleText("Registrate"),
            const SizedBox(height: 8),
            subTitleText("Disfruta de deliciosos menús, hay mucha variedad"),
            const Spacer(),
            const SizedBox(
              width: 180,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "User",
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 180,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            const Spacer(),
            largeButton(() {
              //Funcion que te manda al menu
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return domicilio();
                  },
                ),
              );
            }, Color.fromARGB(255, 236, 236, 236), "Registrarse"),
            const Spacer(),
            subTitleText(
                "El mejor restaurante de colombia"),
            const Spacer(flex: 2),
          ]),
        ),
      ),
    );
  }
}
