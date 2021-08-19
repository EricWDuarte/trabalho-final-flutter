import 'package:flutter/material.dart';
import 'package:trabalho_final/cores.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:trabalho_final/principal.dart';

class DownloadGamesRoute extends StatelessWidget {
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
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 3,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(gameList.length, (index) {
                return Center(child: GameTile.createTile(gameList[index]));
              }),
            )));
  }
}

class GameTile {
  static createTile(Game game) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
              child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Cores.verde),
              child: Container(
                  child: Center(
                    child: FractionallySizedBox(
                      child: Image.asset(game.img),
                      widthFactor: 0.8,
                      heightFactor: 0.8,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Cores.verde,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {
                StoreRedirect.redirect(androidAppId: game.androidRedirect);
              },
            ),
          )),
          SizedBox(height: 5),
          Text(
            game.nome,
            style: TextStyle(
                color: Cores.verde, fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ));
  }
}

const List<Game> gameList = const <Game>[
  const Game("League of Legends", "imagens/leagueoflegends.png",
      "com.riotgames.league.wildrift"),
  const Game("Free Fire", "imagens/freefire.png", "com.dts.freefireth"),
  const Game(
      "Clash Royale", "imagens/clashroyale.png", "com.supercell.clashroyale"),
];

class Game {
  final String nome;
  final String img;
  final String androidRedirect;

  const Game(this.nome, this.img, this.androidRedirect);
}
