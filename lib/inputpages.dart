import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:os_project/fifo.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:os_project/Scamming.dart';

final pagesEntryTextBox = TextEditingController();
final pageCapacityTextBox = TextEditingController();
int frame_capacity = 0;
List<int> pages_arr = new List();

class GetTextFieldValue extends StatefulWidget {

  _GetTextFieldValueState createState() => _GetTextFieldValueState();

}

class _GetTextFieldValueState extends State<GetTextFieldValue> {

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
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 58),
                  child : Text("Frame capacity = $frame_capacity", style: GoogleFonts.montserrat(fontSize: 25))
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
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: GoogleFonts.montserrat(fontSize: 25))
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  RaisedButton(
                    onPressed: clear_all,
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Clear',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Padding (
                    padding: EdgeInsets.all(50),
                  ),
                  RaisedButton(
                    onPressed: () {
                      fifoalgo1(pages_arr, pages_arr.length, frame_capacity);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FIFO()),);
                      },
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Next',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}