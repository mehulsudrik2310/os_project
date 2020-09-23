import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:os_project/inputpages.dart';

int hit2 = 0;
int fault2 = 0;
List<List> toprint2 = new List();

int lifoalgo(List<int> pages, int n, int capacity) {
  int frameSize = capacity;
  int position = -1;
  List<int> frame = new List(frameSize);
  int i = 0;

  for (i = 0; i < n; i++) {
    List<int> s1 = new List();
    if (!(frame.contains(pages[i]))) {
      position++;
      if (position > (frameSize - 1)) position = capacity - 1;
      frame[position] = pages[i];
      s1.addAll(frame);
      toprint2.add(s1);
      fault2++;
    } else if (frame.contains(pages[i])) {
      s1.addAll(frame);
      toprint2.add(s1);
      hit2++;
    }
  }
  return fault2;
}


class LIFO extends StatefulWidget {
  @override
  _LIFOState createState() => _LIFOState();
}

class _LIFOState extends State<LIFO> {

  String msg = '';
  int start=0,end=0,click=0;

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
                child : Text(toprint2.getRange(start, end).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange))
            ),
            IconButton(
              onPressed: () {
                if(toprint2.length > end) {
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

