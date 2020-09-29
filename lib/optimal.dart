import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:os_project/inputpages.dart';

List<List> toprint4 = new List();
int hit4 = 0;
int fault4 = 0;
List <int> fault4_arr = new List();
List <int> hit4_arr = new List();

bool search(int key, List<int> fr) {
  for (int i = 0; i < fr.length; i++) {
    if (fr.elementAt(i) == key) return true;
  }
  return false;
}

int predict(List<int> pages, List<int> fr, int n, int index) {
  int res = -1, farthest = index;
  for (int i = 0; i < fr.length; i++) {
    int j;
    for (j = index; j < n; j++) {
      if (fr.elementAt(i) == pages.elementAt(j)) {
        if (j > farthest) {
          farthest = j;
          res = i;
        }
        break;
      }
    }
    if (j == n) return i;
  }
  return (res == -1) ? 0 : res;
}

void optimalalgo(List<int> pages, int n, int capacity) {
  List <int> fr = new List();
  for (int i = 0; i < n; i++) {
    List <int> s1 = new List();
    if (search(pages.elementAt(i), fr)) {
      s1.addAll(fr);
      for (int j = 0; j < capacity - fr.length; j++) {
        s1.add(null);
      }
      toprint4.add(s1);
      hit4++;
      hit4_arr.add(hit4);
      continue;
    }
    if (fr.length < capacity) {
      fr.add(pages.elementAt(i));
      s1.addAll(fr);
      for (int j = 0; j < capacity - fr.length; j++) {
        s1.add(null);
      }
      toprint4.add(s1);
    } else {
      int j = predict(pages, fr, n, i + 1);
      fr.removeAt(j);
      fr.insert(j, pages.elementAt(i));
      s1.addAll(fr);
      for (int j = 0; j < capacity - fr.length; j++) {
        s1.add(null);
      }
      toprint4.add(s1);
    }
  }
  fault4 = n - hit4;
}


class OPTIMAL extends StatefulWidget {
  @override
  _OPTIMALState createState() => _OPTIMALState();
}

class _OPTIMALState extends State<OPTIMAL> {

  int click = 0;
  int pclick = 1;
  final int length = toprint4.length;

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
                  Text(toprint4.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.red), textAlign: TextAlign.center,),
                ]
            )
        );
      else if(toprint4.elementAt(click-1).contains(toprint4.elementAt(click).elementAt(i)))
        rows.add(
            TableRow(
                children: <Widget> [
                  Text(toprint4.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.green), textAlign: TextAlign.center,),
                ]
            )
        );
      else{
        rows.add(
            TableRow(
                children: <Widget> [
                  Text(toprint4.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.red), textAlign: TextAlign.center,),
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
        toprint4.clear();
        hit4 = 0;
        fault4 = 0;
        fault4_arr.clear();
        hit4_arr.clear();
      },
    );

    Widget continueButton = FlatButton(
      child: Text("STAY"),
      onPressed:  () {
        return _OPTIMALState();
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
                    print(fault4_arr);
                    setState(() {
                      if(toprint4.length > click+1) {
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

