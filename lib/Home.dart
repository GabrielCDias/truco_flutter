import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int nos = 0;
  int eles = 0;
  int pontos = 0;

  void valida() {
    if (nos >= 12) {
      pontos = eles;
      nos = 0;
      eles = 0;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Nós Ganhamos",
              textAlign: TextAlign.center,
            ),
            content: Text(
              "Vitória!\n\n 12 X ${pontos}",
              textAlign: TextAlign.center,
            ),
          );
        },
      );
    } else {
      if (eles >= 12) {
        pontos = nos;
        nos = 0;
        eles = 0;
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                "Eles Ganharam",
                textAlign: TextAlign.center,
              ),
              content: Text(
                "Vitória!\n\n ${pontos} X 12",
                textAlign: TextAlign.center,
              ),
            );
          },
        );
      } else {
        if (nos < 0 || eles < 0) {
          nos = 0;
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  "Menos que zero",
                  textAlign: TextAlign.center,
                ),
              );
            },
          );
        } else {
          if (eles < 0) {
            eles = 0;
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    "Menor que zero!!?",
                    textAlign: TextAlign.center,
                  ),
                );
              },
            );
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador de Truco"),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    "Nós: ${nos}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    "Eles: ${eles}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    child: Text(
                      "+1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        nos += 1;
                        valida();
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text(
                      "+1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        eles += 1;
                        valida();
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    child: Text(
                      "+3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        nos += 3;
                        valida();
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text(
                      "+3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        eles += 3;
                        valida();
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    child: Text(
                      "-1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        nos -= 1;
                        valida();
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text(
                      "-1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        eles -= 1;
                        valida();
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
