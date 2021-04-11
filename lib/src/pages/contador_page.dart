import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = TextStyle(fontSize: 30.0);
  int _conteo = 0;

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
                'Taps Stateful',
                style: _estiloTexto,
              ),
              Text(
                '$_conteo',
                style: _estiloTexto,
              ),
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 35.0,
        ),
        // _createFABzero(),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _zero),
        Expanded(child: SizedBox()),
        // _createFABremove(),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove),
        SizedBox(width: 5.0),
        // _createFABadd(),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
      ],
    );
  }

  void _add() {
    setState(() {
    _conteo++;   
    });
  }

  void _remove() {
    setState(() {
    _conteo--;   
    });
  }

  void _zero() {
    setState(() {
    _conteo = 0;   
    });
  }

  /* Widget _createFABadd() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        setState(() {
          _conteo++;
        });
      });
  }

  Widget _createFABremove() {
    return FloatingActionButton(
      child: Icon(Icons.remove),
      onPressed: () {
        setState(() {
          _conteo--;
        });
      });
  }

  Widget _createFABzero() {
    return FloatingActionButton(
      child: Icon(Icons.exposure_zero),
      onPressed: () {
        setState(() {
          _conteo = 0;
        });
      });
  } */
}
