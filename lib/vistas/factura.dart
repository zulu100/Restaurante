import 'package:flutter/material.dart';

class factura extends StatelessWidget {
  const factura({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/factura.png'))));
    
  }
}
