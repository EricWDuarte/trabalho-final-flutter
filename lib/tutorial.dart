import 'package:flutter/material.dart';
import 'package:trabalho_final/cores.dart';
import 'package:trabalho_final/principal.dart';
import 'downloadGames.dart';

class TutorialRoute extends StatelessWidget {
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
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(color: Cores.roxo),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("LevelUp é simples de entender",
                    style: TextStyle(color: Cores.verde, fontSize: 20)),
                SizedBox(height: 100),
                Text("Jogue",
                    style: TextStyle(
                        color: Cores.verde,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text("Complete as conquistas",
                    style: TextStyle(
                        color: Cores.verde,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Text("E GANHE DINHEIRO",
                    style: TextStyle(color: Cores.verde, fontSize: 20)),
                SizedBox(height: 100),
                Container(
                    width: 180,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Cores.verde),
                      child: Text(
                        'BAIXE JOGOS',
                        style: TextStyle(color: Cores.roxo, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DownloadGamesRoute()),
                        );
                      },
                    )),
              ],
            ))));
  }
}
