import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle estiloTexto = TextStyle(fontSize: 30.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Wolfmoon'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número de veces taps',
              style: estiloTexto,
            ),
            Text(
              '0',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(
            child: Icon(Icons.add), 
            onPressed: () => {}
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
