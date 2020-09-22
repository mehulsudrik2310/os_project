import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:os_project/inputpages.dart';
import 'package:google_fonts/google_fonts.dart';

int hit = 0;
int fault = 0;
List<int> toprint = new List();
void fifoalgo () {
  print(fifoalgo1(pages_arr, pages_arr.length, frame_capacity));
  print(hit);
  print(toprint);
}

int fifoalgo1(List<int>pages, int n, int capacity) {
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
      //print(frame);
      toprint.addAll(frame);
      fault++;

    }
    else if(frame.contains(pages[i]))
    {
      //print(frame);
      toprint.addAll(frame);
      hit++;
    }
  }
  return fault;
}


class FIFO extends StatefulWidget {
  @override
  _FIFOState createState() => _FIFOState();
}

class _FIFOState extends State<FIFO> {

  int i=0,start=0,end=0,click=0;
  void update() {
    setState(() {
      start = click*frame_capacity;
      end = (click+1)*frame_capacity;
      click++;
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
                child : Text(toprint.getRange(start, end).toString(), style: GoogleFonts.montserrat(fontSize: 25.0,color: Colors.orange))
            ),
            IconButton(
              onPressed: () {
                update();
              },
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}

