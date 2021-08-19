import 'package:flutter/material.dart';
import 'package:trabalho_final/cores.dart';
import 'package:trabalho_final/pontos.dart';

class FreeFire extends StatefulWidget {
  const FreeFire({Key? key}) : super(key: key);

  @override
  _FreeFireState createState() => _FreeFireState();
}

class _FreeFireState extends State<FreeFire> {
  bool _selecionavalor = false;
  bool _selecionavalo1 = false;
  bool _selecionavalo2 = false;
  bool _selecionavalo3 = false;
  bool _selecionavalo4 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Selecione as missões feitas hoje e o app ira conferir!",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            CheckboxListTile(
                title: Text("Mate 20 inimigos com tiro na cabeça:"),
                value: _selecionavalor,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalor) {
                      _selecionavalor = false;
                      pontos.diminuiPontos(10);
                    } else {
                      _selecionavalor = true;
                      pontos.aumentaPontos(10);
                    }
                  });
                  print("Valor selecionado 0 =" + _selecionavalor.toString());
                }),
            SizedBox(
              height: 18,
            ),
            CheckboxListTile(
                title: Text("Ganhe uma ranqueada:"),
                value: _selecionavalo1,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalo1) {
                      pontos.diminuiPontos(10);
                      _selecionavalo1 = false;
                    } else {
                      pontos.aumentaPontos(10);
                      _selecionavalo1 = true;
                    }
                  });
                  print("Valor selecionado 1 =" + _selecionavalo1.toString());
                }),
            SizedBox(
              height: 18,
            ),
            CheckboxListTile(
                title: Text("Chame um amigo de volta:"),
                value: _selecionavalo2,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalo2) {
                      pontos.diminuiPontos(10);
                      _selecionavalo2 = false;
                    } else {
                      pontos.aumentaPontos(10);
                      _selecionavalo2 = true;
                    }
                  });
                  print("Valor selecionado 1 =" + _selecionavalo2.toString());
                }),
            SizedBox(
              height: 18,
            ),
            CheckboxListTile(
                title: Text("Gire o sorte royale de diamante!"),
                value: _selecionavalo3,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalo3) {
                      pontos.diminuiPontos(10);
                      _selecionavalo3 = false;
                    } else {
                      pontos.aumentaPontos(10);
                      _selecionavalo3 = true;
                    }
                  });
                  print("Valor selecionado 3 =" + _selecionavalo3.toString());
                }),
            SizedBox(
              height: 18,
            ),
            CheckboxListTile(
                title: Text("Gaste 100 dimas:"),
                value: _selecionavalo4,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalo4) {
                      _selecionavalo4 = false;
                    } else {
                      _selecionavalo4 = true;
                    }
                  });

                  print("Valor selecionado 4 =" + _selecionavalo4.toString());
                }),

            SizedBox(
              height: 25,
            ),
            //ignore: deprecated_member_use
            RaisedButton(
              hoverElevation: 20,
              child: Text(
                'Conferir!',
              ),
              onPressed: () {
                _selecionavalo1 = false;
              },
            ),
          ],
        ),
      ),
    );
  }
}
