import 'package:flutter/material.dart';
import 'package:trabalho_final/cores.dart';
import 'package:trabalho_final/principal.dart';
import 'ClashRoyale.dart';
import 'FreeFire.dart';
import 'Lol.dart';

class jogos extends StatefulWidget {
  const jogos({Key? key}) : super(key: key);

  @override
  _jogosState createState() => _jogosState();
}

class _jogosState extends State<jogos> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Cores.roxo,
        iconTheme: IconThemeData(color: Cores.verde),
        title: Text(
          "Hora de ganhar dinheiro!",
          style: TextStyle(
            fontSize: 22,
            color: Cores.verde,
          ),
        ),
        bottom: TabBar(
          indicatorWeight: 5,
          indicatorColor: Cores.verde,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
                text: "Free Fire",
                icon: new Image.asset("imagens/freefireverde.png", width: 80)),
            Tab(
                text: "Clash Royale",
                icon: Image.asset("imagens/clashroyaleverde.png", height: 40)),
            Tab(
                text: "LoL",
                icon: Image.asset("imagens/leagueoflegendsverde.png",
                    height: 40)),
          ],
        ),
      ),
      drawer: Principal(),
      body: TabBarView(
        controller: _tabController,
        children: [
          FreeFire(),
          ClashRoyale(),
          Lol(),
        ],
      ),
    );
  }
}
