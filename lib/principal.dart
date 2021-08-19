import 'package:flutter/material.dart';
import 'package:trabalho_final/downloadGames.dart';
import 'package:trabalho_final/mainMenu.dart';
import 'package:trabalho_final/tutorial.dart';
import 'jogos.dart';
import 'package:trabalho_final/cores.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  PrincipalState createState() => PrincipalState();
}

class PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Cores.verde,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              child: Text('LevelUp',
                  style: TextStyle(
                      color: Cores.roxo,
                      fontWeight: FontWeight.bold,
                      fontSize: 24)),
            ),
            Divider(height: 0, color: Cores.roxo, thickness: 2),
            ListTile(
              leading: Icon(Icons.home, color: Cores.roxo),
              title: Text('Home',
                  style: TextStyle(
                    color: Cores.roxo,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainRoute()));
              },
            ),
            Divider(height: 0, color: Cores.roxo, thickness: 2),
            ListTile(
              leading: Icon(Icons.check_circle, color: Cores.roxo),
              title: Text('Missões',
                  style: TextStyle(
                    color: Cores.roxo,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => jogos()));
              },
            ),
            Divider(height: 0, color: Cores.roxo, thickness: 2),
            ListTile(
              leading: Icon(Icons.paid, color: Cores.roxo),
              title: Text('Ganhos',
                  style: TextStyle(
                    color: Cores.roxo,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {},
              focusColor: Cores.roxo,
            ),
            Divider(height: 0, color: Cores.roxo, thickness: 2),
            ListTile(
              leading: Icon(Icons.sports_esports, color: Cores.roxo),
              title: Text('Baixe jogos',
                  style: TextStyle(
                    color: Cores.roxo,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DownloadGamesRoute()));
              },
            ),
            Divider(height: 0, color: Cores.roxo, thickness: 2),
            ListTile(
              leading: Icon(Icons.help, color: Cores.roxo),
              title: Text('Como funciona?',
                  style: TextStyle(
                    color: Cores.roxo,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TutorialRoute()));
              },
            ),
            Divider(height: 0, color: Cores.roxo, thickness: 2),
          ],
        ),
      ),
    );
  }
}
