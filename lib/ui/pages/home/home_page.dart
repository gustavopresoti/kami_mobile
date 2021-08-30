import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool _pressObserver;

  @override
  void initState() {
    _pressObserver = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Kamikapp',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    child: Text('Botão', style: TextStyle(fontSize: 24),),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.resolveWith(
                              (states) => Size.fromHeight(50)),
                      foregroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white),
                      backgroundColor: _pressObserver
                          ? MaterialStateColor.resolveWith(
                              (states) => Colors.red)
                          : MaterialStateColor.resolveWith(
                              (states) => Colors.green),
                    ),
                    onPressed: () {
                      setState(() {
                        _pressObserver = !_pressObserver;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.money),
                            Text('Financeiro'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.money),
                            Text('Tarefas'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.money),
                            Text('Presidência'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.money),
                            Text('Caixinha'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
