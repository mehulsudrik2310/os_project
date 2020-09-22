import 'package:flutter/material.dart';
import 'package:os_project/homepage.dart';

void main () =>runApp(OSProject());

class OSProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OS_Project',
      home: HomePage(),
    );
  }
}
