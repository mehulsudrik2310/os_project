import 'package:flutter/material.dart';
import 'package:os_project/pages.dart';
import 'package:os_project/inputpages.dart';

class Input extends StatelessWidget {

  final Pages pages;
  Input({ @required this.pages });

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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GetTextFieldValue()),);
                  },
              ),
            ],
          ),
        )
    );
  }
}