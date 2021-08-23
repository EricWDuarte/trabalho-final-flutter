import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_final/cores.dart';
import 'package:trabalho_final/mainMenu.dart';
import 'package:trabalho_final/principal.dart';
import 'Jogos.dart';

class Logindart extends StatefulWidget {
  const Logindart({Key? key}) : super(key: key);

  @override
  _LogindartState createState() => _LogindartState();
}

class _LogindartState extends State<Logindart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(50),
        child: Image.asset("imagens/logo.png"),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 32),
        child: Text("Digite seu email e senha",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),

        //style: TextStyle(
        // fontSize: 25,
      ),
      Padding(
          padding: EdgeInsets.all(50),
          child: Column(children: [
            TextField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Cores.verde),
                  labelStyle: TextStyle(color: Cores.verde),
                  helperStyle: TextStyle(color: Cores.verde),
                  hoverColor: Cores.verde,
                  focusColor: Cores.verde,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(color: Cores.verde)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(color: Cores.verde)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(color: Cores.verde, width: 2)),
                  icon: Icon(Icons.email, color: Cores.verde),
                  labelText: "Digite seu email",
                )),
            SizedBox(
              height: 25,
            ),
            TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Cores.verde),
                  labelStyle: TextStyle(color: Cores.verde),
                  helperStyle: TextStyle(color: Cores.verde),
                  hoverColor: Cores.verde,
                  focusColor: Cores.verde,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(color: Cores.verde)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(color: Cores.verde)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(color: Cores.verde, width: 2)),
                  icon: Icon(Icons.password, color: Cores.verde),
                  labelText: "Digite sua senha",
                ))
          ])),
      Padding(
        padding: EdgeInsets.only(top: 20),
        //ignore: deprecated_member_use
        child: RaisedButton(
          color: Cores.verde,
          textColor: Cores.roxo,
          padding: EdgeInsets.all(15),
          child: Text(
            "Logar",
            style: TextStyle(fontSize: 19),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainRoute()));
          },
        ),
      )
    ])));
  }
}
