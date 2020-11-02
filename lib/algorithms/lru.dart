import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:os_project/ui pages/homepage.dart';
import 'package:os_project/ui pages/inputpages.dart';

List<List> toprint3 = new List();
int fault3 = 0;
int hit3 = 0;
List <int> fault3_arr = new List();
List <int> hit3_arr = new List();

int lrualgo(List<int> pages, int n, int capacity) {
  List <int> frame = new List();
  List <int> st = new List();
  for (int i = 0; i < n; i++) {
    List <int> s1 = new List();
    if (!frame.contains(pages[i])) {
      if (frame.length < capacity) {
        frame.add(pages[i]);
        st.add((frame.length) - 1);
        if (frame.length <= capacity) {
          s1.addAll(frame);
          for (int j = 0; j < (capacity - frame.length); j++) {
            s1.add(null);
          }
          toprint3.add(s1);
          fault3 ++;
          fault3_arr.add(fault3);
          if(i==0) {
            hit3_arr.add(0);
          }
          else {
            hit3_arr.add(hit3_arr.elementAt(hit3_arr.length-1));
          }
        }
      }
      else {
        int ind = st.removeAt(0);

        frame[ind] = pages[i];

        st.add(ind);
        s1.addAll(frame);
        toprint3.add(s1);
        fault3 ++;
        fault3_arr.add(fault3);
        hit3_arr.add(hit3_arr.elementAt(hit3_arr.length-1));
      }
    }
    else {
      st.add(st.removeAt(st.indexOf(frame.indexOf(pages[i]))));
      if (frame.length <= capacity) {
        s1.addAll(frame);
        for (int j = 0; j < (capacity - frame.length); j++) {
          s1.add(null);
        }
      } else
        s1.addAll(frame);
      toprint3.add(s1);
      hit3++;
      hit3_arr.add(hit3);
      fault3_arr.add(fault3_arr.elementAt(fault3_arr.length-1));
    }
  }
  return fault3;
}


class LRU extends StatefulWidget {
  @override
  _LRUState createState() => _LRUState();
}

class _LRUState extends State<LRU> {

  int click = 0;
  int pclick = 1;
  final int length = toprint3.length;

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
              Text(toprint3.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.red), textAlign: TextAlign.center,),
            ]
          )
        );
      else if(toprint3.elementAt(click-1).contains(toprint3.elementAt(click).elementAt(i)))
        rows.add(
          TableRow(
            children: <Widget> [
              Text(toprint3.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.green), textAlign: TextAlign.center,),
            ]
          )
        );
      else{
        rows.add(
          TableRow(
            children: <Widget> [
              Text(toprint3.elementAt(click).elementAt(i).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.red), textAlign: TextAlign.center,),
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
        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()),);
        frame_capacity = 0;
        pagesEntryTextBox.text = '';
        pageCapacityTextBox.text = '';
        pages_arr.clear();
        toprint3.clear();
        hit3 = 0;
        fault3 = 0;
        fault3_arr.clear();
        hit3_arr.clear();
      },
    );

    Widget continueButton = FlatButton(
      child: Text("STAY"),
      onPressed:  () {
        return _LRUState();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 20, 2, 8),
                  child : Text('Page Hit : ', style: GoogleFonts.montserrat(fontSize: 23.0,color: Colors.green)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2, 20, 60, 8),
                  child : Text(hit3_arr.elementAt(click).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.green)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 2, 8),
                  child : Text('Page Fault : ', style: GoogleFonts.montserrat(fontSize: 23.0,color: Colors.red)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2, 20, 8, 8),
                  child : Text(fault3_arr.elementAt(click).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.red)),
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
                      if(toprint3.length > click+1) {
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