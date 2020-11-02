import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:os_project/graph.dart';
import 'package:os_project/inputpages.dart';

int hit1 = 0;
int fault1 = 0;
List <List> toprint1 = new List();
List <int> fault1_arr = new List();
List <int> hit1_arr = new List();


int fifoalgo(List<int> pages, int n, int capacity) {
  int frameSize = capacity;
  int position = -1;
  List <int> frame =  new List(frameSize);
  int i = 0;

  for(i=0;i<n;i++)
  {
    List <int> s1 = new List();
    if(!(frame.contains(pages[i])))
    {
      position++;
      if(position>(frameSize-1))
        position=0;
      frame[position] = pages[i];
      s1.addAll(frame);
      toprint1.add(s1);
      fault1++;
      fault1_arr.add(fault1);
      if(i==0) {
        hit1_arr.add(0);
      }
      else {
        hit1_arr.add(hit1_arr.elementAt(hit1_arr.length-1));
      }
    }
    else if(frame.contains(pages[i]))
    {
      s1.addAll(frame);
      toprint1.add(s1);
      hit1++;
      hit1_arr.add(hit1);
      fault1_arr.add(fault1_arr.elementAt(fault1_arr.length-1));
    }
  }
  return fault1;
}


class FIFO extends StatefulWidget {
  @override
  _FIFOState createState() => _FIFOState();
}

class _FIFOState extends State<FIFO> {

  int click = 0;
  int pclick = 1;
  final int length = toprint1.length;

  Widget createTable() {
    List<TableRow> rows = [];
    rows.add(
      TableRow(
          children: <Widget> [
            Text("Pages",style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange), textAlign: TextAlign.center,),
          ]
      )
    );
    for (int i = 0; i < frame_capacity; i++) {
      if(click == 0)
        rows.add(
          TableRow(
            children: <Widget> [
              Text(toprint1.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.red), textAlign: TextAlign.center,),
            ]
          )
        );
      else if(toprint1.elementAt(click-1).contains(toprint1.elementAt(click).elementAt(i)))
        rows.add(
          TableRow(
            children: <Widget> [
              Text(toprint1.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.green), textAlign: TextAlign.center,),
            ]
          )
        );
      else{
        rows.add(
          TableRow(
            children: <Widget> [
              Text(toprint1.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.red), textAlign: TextAlign.center,),
            ]
          )
        );
      }
    }
    return Table(children: rows);
  }


  showAlertDialog(BuildContext context) {

    Widget cancelButton = FlatButton(
      child: Text("EXIT"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> GetTextFieldValue()),);
        frame_capacity = 0;
        pagesEntryTextBox.text = '';
        pageCapacityTextBox.text = '';
        pages_arr.clear();
        toprint1.clear();
        hit1 = 0;
        fault1 = 0;
        fault1_arr.clear();
        hit1_arr.clear();
      },
    );

    // Widget continueButton = FlatButton(
    //   child: Text("STAY"),
    //   onPressed: Navigator.pop(context)
    // );

    Widget graphButton = FlatButton(
      child: Text("SHOW GRAPH"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> GraphPage()),);
      },
    );

    AlertDialog alert = new AlertDialog(
      title: Text("PROCESS COMPLETED"),
      content: Text("YOU HAVE REACHED END OF THE ALGORITHM WHAT WOULD YOU LIKE TO DO?"),
      actions: [
        cancelButton,
        graphButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 10),
              child : Text('Click on arrows to see sets', style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange))
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 40),
                child : Text('Set: $pclick / $length', style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange))
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 40),
              child : createTable(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 20, 2, 8),
                  child : Text('Page Hit : ', style: GoogleFonts.montserrat(fontSize: 23.0,color: Colors.green)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2, 20, 60, 8),
                  child : Text(hit1_arr.elementAt(click).toString(), style: GoogleFonts.montserrat(fontSize: 23.0,color: Colors.green)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 2, 8),
                  child : Text('Page Fault : ', style: GoogleFonts.montserrat(fontSize: 23.0,color: Colors.red)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2, 20, 8, 8),
                  child : Text(fault1_arr.elementAt(click).toString(), style: GoogleFonts.montserrat(fontSize: 23.0,color: Colors.red)),
                ),
              ],
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(() {
                      if(click > 0) {
                        click--;
                        pclick--;
                      }
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(40),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    setState(() {
                      if(toprint1.length > click+1) {
                        click++;
                        pclick++;
                      }
                      else {
                        showAlertDialog(context);
                      }
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

