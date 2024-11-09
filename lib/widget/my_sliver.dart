import 'package:flutter/material.dart';

class BasicSliverAppBar extends StatelessWidget {
  const BasicSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List items = List.generate(10, (i) => Rectangulo(i));
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text('Suma de totales')  ,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, i) {
              return items[i];
            }, childCount: items.length),
          ),
        ],
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  final int index;

  const Rectangulo(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 150,
          height: 150,
          color: Colors.blueGrey,
          child: Center(
            child: Text(
              '$index',
              style: const TextStyle(fontSize: 26, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
