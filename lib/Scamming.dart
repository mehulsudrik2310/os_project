import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:os_project/inputpages.dart';

class S1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                    child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('7', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('null', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('null', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('null', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 0',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 1',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>S2()),);
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}

class S2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('7', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('null', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('null', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 0',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 2',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>S3()),);
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}

class S3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('7', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('null', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 0',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 3',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>S4()),);
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}

class S4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('7', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('2', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 0',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 4',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>S5()),);
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}

class S5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('7', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('2', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 1',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 4',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>S6()),);
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}

class S6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('3', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('2', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 2',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 5',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>S7()),);
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}

class S7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('3', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('2', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 3',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 5',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>S8()),);
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}

class S8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('3', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('4', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('2', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 3',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 6',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>S9()),);
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}

class S9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('3', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('4', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('2', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 4',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 6',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>S10()),);
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )
        )
    );
  }
}

class S10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OUTPUT'),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 60),
                  child : Text("Entered pages are = $pages_arr", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  child: Text('3', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('4', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                FlatButton(
                  child: Text('2', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('Hit = 5',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text('Fault = 6',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                ),
              ],
            )
        )
    );
  }
}