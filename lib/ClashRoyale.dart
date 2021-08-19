import 'package:flutter/material.dart';
import 'package:trabalho_final/pontos.dart';

class ClashRoyale extends StatefulWidget {
  const ClashRoyale({Key? key}) : super(key: key);

  @override
  _ClashRoyaleState createState() => _ClashRoyaleState();
}

class _ClashRoyaleState extends State<ClashRoyale> {
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
                title: Text("Doou 10 cartas"),
                value: _selecionavalor,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalor) {
                      pontos.diminuiPontos(10);
                      _selecionavalor = false;
                    } else {
                      pontos.aumentaPontos(10);
                      _selecionavalor = true;
                    }
                  });
                  print("Valor selecionado 0 =" + _selecionavalor.toString());
                }),
            SizedBox(
              height: 18,
            ),
            CheckboxListTile(
                title: Text("Derrotou 5 oponentes"),
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
                title: Text("Jogou evento"),
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
                title: Text("Abriu 2 baús"),
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
                title: Text("Ganhar de 3 coroas"),
                value: _selecionavalo4,
                onChanged: (_valorcheck) {
                  setState(() {
                    if (_selecionavalo4) {
                      pontos.diminuiPontos(10);
                      _selecionavalo4 = false;
                    } else {
                      pontos.aumentaPontos(10);
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
