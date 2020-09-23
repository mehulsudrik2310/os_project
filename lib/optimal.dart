import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:os_project/inputpages.dart';

List<List> toprint4 = new List();
int hit4 = 0;
int miss4 = 0;

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
  List<int> fr = new List();
  for (int i = 0; i < n; i++) {
    List<int> s1 = new List();
    if (search(pages.elementAt(i), fr)) {
      s1.addAll(fr);
      for (int j = 0; j < capacity - fr.length; j++) {
        s1.add(null);
      }
      toprint4.add(s1);
      hit4++;
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
  miss4 = n - hit4;
}


class OPTIMAL extends StatefulWidget {
  @override
  _OPTIMALState createState() => _OPTIMALState();
}

class _OPTIMALState extends State<OPTIMAL> {

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
                child : Text(toprint4.getRange(start, end).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange))
            ),
            IconButton(
              onPressed: () {
                if(toprint4.length > end) {
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

