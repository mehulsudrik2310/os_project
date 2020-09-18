import 'package:flutter/cupertino.dart';
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
      body: Center(
        child: GetTextFieldValue(),
      ),
    );
  }
}

class GetTextFieldValue extends StatefulWidget {

  _GetTextFieldValueState createState() => _GetTextFieldValueState();

}

class _GetTextFieldValueState extends State<GetTextFieldValue> {

  final pagesEntryTextBox = TextEditingController();
  final pageCapacityTextBox = TextEditingController();
  String input_pages = '';
  int frame_capacity = 0;
  int i=0;
  List<int> pages_arr = new List();
  void getCapacity() {
    setState(() {
      frame_capacity = int.parse(pageCapacityTextBox.text);
    });
  }
  void getTextInputData() {
    setState(() {
      pages_arr.add(int.parse(pagesEntryTextBox.text));
      pagesEntryTextBox.text = '';
    });
  }
  void clear_all() {
    setState(() {
      pagesEntryTextBox.text = '';
      pageCapacityTextBox.text = '';
      pages_arr.clear();
      frame_capacity = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 190,
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    controller: pageCapacityTextBox,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Enter the frame size'),
                  )
                ),
                RaisedButton(
                  onPressed: getCapacity,
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('Enter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child : Text("Page capacity = $frame_capacity", style: TextStyle(fontSize: 20))
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: pagesEntryTextBox,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Enter the series of pages one by one'),
                  )
                ),
                RaisedButton(
                  onPressed: getTextInputData,
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('Enter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 20))
            ),
            RaisedButton(
              onPressed: clear_all,
              color: Colors.redAccent,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Clear',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      )
    );
  }
}





