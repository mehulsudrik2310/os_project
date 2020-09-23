import 'package:flutter/material.dart';
import 'package:os_project/pages.dart';
import 'package:os_project/infopage.dart';

class PageList extends StatefulWidget {
  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  List<Widget> _pageTiles = [];
  final GlobalKey _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    addPages();
  }

  void addPages() {
    List<Pages> _pages = [
      Pages(title: 'FIFO PRA', img: 'fifopra.png', info: 'Info for FIFO PRA'),
      Pages(title: 'LIFO PRA', img: 'lifopra.png', info: 'Info for LIFO PRA'),
      Pages(title: 'LRU PRA', img: 'lrupra.png', info: 'Info for LRU PRA'),
      Pages(title: 'Optimal PRA', img: 'opra.png', info: 'Info for Optimal PRA'),
      Pages(title: 'Random PRA', img: 'rpra.png', info: 'Info for Random PRA'),
    ];

    _pages.forEach((Pages page) {
      _pageTiles.add(_buildTile(page));
    });
  }

  Widget _buildTile(Pages page) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Info(pages: page)));
      },
      contentPadding: EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(page.title, style: TextStyle(fontSize: 40, color: Colors.amber, fontWeight: FontWeight.bold)),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset('images/${page.img}', height: 50.0, width: 50.0,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _pageTiles.length,
        itemBuilder: (context, index) {
          return _pageTiles[index];
        }
    );
  }
}