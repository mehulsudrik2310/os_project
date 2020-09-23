import 'package:flutter/material.dart';
import 'package:os_project/pages.dart';
import 'package:os_project/inputpages.dart';

int signal = 0;

class Info extends StatelessWidget {

  final Pages pages;
  Info({ @required this.pages });

  void check() {
    if(pages.title == 'FIFO PRA') {
      signal = 1;
    }
    if(pages.title == 'LIFO PRA') {
      signal = 2;
    }
    if(pages.title == 'LRU PRA') {
      signal = 3;
    }
    if(pages.title == 'Optimal PRA') {
      signal = 4;
    }
    if(pages.title == 'Random PRA') {
      signal = 5;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                  child: Image.asset(
                    'images/${pages.img}',
                    height: 200,
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  )
              ),
              SizedBox(height: 30),
              ListTile(
                  title: Text(pages.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.grey[800])),
              ),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              SizedBox(
                  height: 250,
                  child: Text(pages.info, style: TextStyle(fontSize: 30),)
              ),
              RaisedButton(
                child: Text('Go to input pages',style: TextStyle(fontSize: 20,color: Colors.green),),
                onPressed:() {
                  check();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GetTextFieldValue()),);
                  },
              ),
            ],
          ),
        )
    );
  }
}