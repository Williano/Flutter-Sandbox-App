import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          _sliverAppBar("List"),
          _sliverFixedExtentList(),
          _sliverAppBar("Grid"),
          _sliverGrid()
        ],
      ),
    );
  }

  Color _randomColor(int index) {
    if (index % 3 == 0) {
      return Colors.pink;
    } else if (index % 3 == 1) {
      return Colors.blueAccent;
    }

    return Colors.amber;
  }

  Widget _sliverAppBar(String title) => SliverAppBar(
        backgroundColor: Colors.green,
        pinned: true,
        expandedHeight: 200.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Text("$title"),
          centerTitle: true,
          background: Image.asset(
            "assets/images/error.jpg",
            fit: BoxFit.fill,
          ),
        ),
      );

  Widget _sliverFixedExtentList() => SliverFixedExtentList(
      delegate: SliverChildListDelegate(
        [
          Card(child: Container(color: Colors.red)),
          Container(color: Colors.purple),
          Container(color: Colors.green),
          Container(color: Colors.orange),
          Container(color: Colors.yellow),
          Container(color: Colors.pink),
        ],
      ),
      itemExtent: 150.0);

  Widget _sliverGrid() => SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Card(
              child: Container(color: _randomColor(index), height: 200.0));
        }),
      );
}
