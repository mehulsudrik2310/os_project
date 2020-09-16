import 'package:flutter/material.dart';

void main() => runApp(OSProject());

class OSProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OS_Project',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Types of Paging Algorithm'),
      ),
      body: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(2,10,2,10),
      children: <Widget>[
        Display(
          name: 'Algo1',
        ),
        Display(
          name: 'Algo2',
        ),
        Display(
          name: 'Algo3',
        ),
        Display(
          name: 'Algo4',
        ),
      ],
     ),
    );
  }
}

class Display extends StatelessWidget {
  Display({Key key, this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      color: Colors.amber,
                      child: Text(this.name, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40),),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AlgorithmPage()),);
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AlgorithmPage extends StatefulWidget {
  @override
  _AlgorithmPageState createState() => _AlgorithmPageState();
}

class _AlgorithmPageState extends State<AlgorithmPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: Text('Algo xyz',style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
    );
  }
}





