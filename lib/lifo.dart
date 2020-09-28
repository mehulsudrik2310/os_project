import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:os_project/inputpages.dart';

int hit2 = 0;
int fault2 = 0;
List <List> toprint2 = new List();
List <int> fault2_arr = new List();
List <int> hit2_arr = new List();

int lifoalgo(List<int> pages, int n, int capacity) {
  int frameSize = capacity;
  int position = -1;
  List <int> frame = new List(frameSize);
  int i = 0;

  for (i = 0; i < n; i++) {
    List <int> s1 = new List();
    if (!(frame.contains(pages[i]))) {
      position++;
      if (position > (frameSize - 1)) position = capacity - 1;
      frame[position] = pages[i];
      s1.addAll(frame);
      toprint2.add(s1);
      fault2++;
      fault2_arr.add(fault2);
    }
    else if (frame.contains(pages[i])) {
      s1.addAll(frame);
      toprint2.add(s1);
      hit2++;
      hit2_arr.add(hit2);
    }
  }
}


class LIFO extends StatefulWidget {
  @override
  _LIFOState createState() => _LIFOState();
}

class _LIFOState extends State<LIFO> {

  int click = 0;
  int pclick = 1;
  final int length = toprint2.length;

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
                  Text(toprint2.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.red), textAlign: TextAlign.center,),
                ]
            )
        );
      else if(toprint2.elementAt(click-1).contains(toprint2.elementAt(click).elementAt(i)))
        rows.add(
            TableRow(
                children: <Widget> [
                  Text(toprint2.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.green), textAlign: TextAlign.center,),
                ]
            )
        );
      else{
        rows.add(
            TableRow(
                children: <Widget> [
                  Text(toprint2.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.red), textAlign: TextAlign.center,),
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
      onPressed:  () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> GetTextFieldValue()),);
        frame_capacity = 0;
        pagesEntryTextBox.text = '';
        pageCapacityTextBox.text = '';
        pages_arr.clear();
        toprint2.clear();
      },
    );

    Widget continueButton = FlatButton(
      child: Text("STAY"),
      onPressed:  () {
        return _LIFOState();
      },
    );

    AlertDialog alert = new AlertDialog(
      title: Text("PROCESS COMPLETED"),
      content: Text("YOU HAVE REACHED END OF THE ALGORITHM WHAT WOULD YOU LIKE TO DO?"),
      actions: [
        cancelButton,
        continueButton,
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget> [
            //     Padding(
            //       padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            //       child : Text(hit1_arr.elementAt(1).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange)),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            //       child : Text(fault1_arr.elementAt(1).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange)),
            //     ),
            //   ],
            // ),
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
                    print(fault2_arr);
                    setState(() {
                      if(toprint2.length > click+1) {
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

