import 'package:flutter/material.dart';
import 'package:proyecto_zulu/vistas/factura.dart';
import 'package:proyecto_zulu/widgets/wcWidgets.dart';

class domicilio extends StatelessWidget {
  domicilio({super.key});

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
            color: Color.fromARGB(255, 209, 135, 135),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            const Image(image: AssetImage("assets/burger.jpg")),
            titleText("Domicilio"),
            const SizedBox(height: 8),
            subTitleText("Te agradecemos, tu producto sera enviado una vez pedias el domicilio"),
            const SizedBox(
              width: 180,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Direccion",
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 180,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Numero de telefono",
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 180,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Nombre del producto",
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 180,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Cantidad",
                ),
              ),
            ),
            const Spacer(flex: 2),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const factura();
                  },
                ),
              );
            }, Colors.cyan, "Pedir Domicilio")
          ]),
        ),
      ),
    );
  }
}
