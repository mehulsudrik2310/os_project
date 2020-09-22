import 'package:flutter/material.dart';
import 'package:os_project/pages.dart';



int x=4;

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
  final Pages pages;
  Input({ @required this.pages });
}

class _InputState extends State<Input> {
  final Pages pages;
  _InputState({ @required this.pages });

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Image.asset(
                    'images/${pages.img}',
                    height: 360,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  )
              ),
              SizedBox(height: 30),
              ListTile(
                title: Text(
                    pages.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey[800]
                    )
                ),
              ),
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
        ),
    );
  }
}

