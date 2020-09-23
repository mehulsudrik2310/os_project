import 'package:flutter/material.dart';
import 'package:os_project/inputpages.dart';
import 'package:google_fonts/google_fonts.dart';

int hit1 = 0;
int fault1 = 0;
List<int> toprint1 = new List();

int fifoalgo(List<int> pages, int n, int capacity) {

  int frameSize = capacity;
  int position = -1;
  List<int> frame =  new List(frameSize);
  int i = 0;

  for(i=0;i<n;i++)
  {
    if(!(frame.contains(pages[i])))
    {
      position++;
      if(position>(frameSize-1))
        position=0;
      frame[position] = pages[i];
      toprint1.addAll(frame);
      fault1++;

    }
    else if(frame.contains(pages[i]))
    {
      toprint1.addAll(frame);
      hit1++;
    }
  }
  return fault1;
}


class FIFO extends StatefulWidget {
  @override
  _FIFOState createState() => _FIFOState();
}

class _FIFOState extends State<FIFO> {

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
                child : Text(toprint1.getRange(start, end).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange))
            ),
            IconButton(
              onPressed: () {
                if(toprint1.length > end) {
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

