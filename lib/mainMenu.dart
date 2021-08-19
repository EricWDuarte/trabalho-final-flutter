import 'package:flutter/material.dart';
import 'package:trabalho_final/cores.dart';
import 'package:trabalho_final/jogos.dart';
import 'package:trabalho_final/pontos.dart';
import 'package:trabalho_final/principal.dart';
import 'package:trabalho_final/tutorial.dart';

class MainRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Cores.roxo,
          iconTheme: IconThemeData(color: Cores.verde),
        ),
        drawer: Principal(),
        body: Container(
            decoration: BoxDecoration(color: Cores.roxo),
            child: Align(
                alignment: FractionalOffset(0.5, 0.3),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Cores.verde,
                      child: CircleAvatar(
                        radius: 73,
                        backgroundColor: Cores.roxo,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Cores.verde,
                          child: Text(
                            pontos.valor.toString(),
                            style: TextStyle(color: Cores.roxo, fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 260),
                    Container(
                      width: 120,
                      height: 30,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Cores.verde),
                        child: Text(
                          'Começar',
                          style: TextStyle(color: Cores.roxo),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TutorialRoute()),
                          );
                        },
                      ),
                    )
                  ],
                ))));
  }
}
