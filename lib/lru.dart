import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:os_project/inputpages.dart';

List<List> toprint3 = new List();
int fault3 = 0;
int hit3 = 0;

int lrualgo(List<int> pages, int n, int capacity) {
  List<int> frame = new List();
  List<int> st = new List();
  for (int i = 0; i < n; i++) {
    List<int> s1 = new List();
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
        }
        print("F - $frame");
        print("ST - $st");
        //  print(toprint);
      } else {
        int ind = st.removeAt(0);

        frame[ind] = pages[i];

        st.add(ind);
        s1.addAll(frame);
        toprint3.add(s1);

        print("F - $frame");
        print("ST - $st");
        //print(toprint);

        fault3 += 1;
      }
    } else {
      st.add(st.removeAt(st.indexOf(frame.indexOf(pages[i]))));
      if (frame.length <= capacity) {
        s1.addAll(frame);
        for (int j = 0; j < (capacity - frame.length); j++) {
          s1.add(null);
        }
        toprint3.add(s1);
      } else
        s1.addAll(frame);
      toprint3.add(s1);

      hit3++;
      print("F - $frame");
      print("ST - $st");
//        print(toprint);
    }
  }
  return fault3;
}


class LRU extends StatefulWidget {
  @override
  _LRUState createState() => _LRUState();
}

class _LRUState extends State<LRU> {

  String msg = '';
  int i=0,start=0,end=0,click=0;

  void update() {
    setState(() {
      start = click*frame_capacity;
      end = (click+1)*frame_capacity;
      click++;
    });
  }

  void update_msg() {
    setState(() {
      msg = 'You are done with the ans of the list';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 40),
                child : Text('Click on next arrow to see next set', style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange))
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 40),
                child : Text(toprint3.getRange(start, end).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange))
            ),
            IconButton(
              onPressed: () {
                if(toprint3.length > end) {
                  update();
                }
                else {
                  update_msg();
                }
              },
              icon: Icon(Icons.arrow_forward),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 40),
                child : Text('$msg', style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange))
            ),
          ],
        ),
      ),
    );
  }
}

