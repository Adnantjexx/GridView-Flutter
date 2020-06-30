import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Padding(
            padding: const EdgeInsets.only(top: 40),
            child: new StaggeredGridView.count(
              crossAxisCount: 3,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              padding: const EdgeInsets.all(4.0),
            )
        )
    );
  }
}

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.imageFood);

  final AssetImage imageFood;

  @override
  Widget build(BuildContext context) {
    return new ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: new Image(
            image: imageFood,
            fit: BoxFit.cover,
          ),
        );
  }
}

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(3, 1),
  const StaggeredTile.count(4, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(4, 1),

];

List<Widget> _tiles = const <Widget>[
  const _Example01Tile(AssetImage("assets/images/pizza.jpg")),
  const _Example01Tile(AssetImage("assets/images/burger2.png")),
  const _Example01Tile(AssetImage("assets/images/burger-rossini.jpg")),
  const _Example01Tile(AssetImage("assets/images/chawarma.png")),
  const _Example01Tile(AssetImage("assets/images/pizza_spain.jpg")),
  const _Example01Tile(AssetImage("assets/images/pizza2.png")),
  const _Example01Tile(AssetImage("assets/images/soup.jpg")),
  const _Example01Tile(AssetImage("assets/images/tacos.jpg")),
  const _Example01Tile(AssetImage("assets/images/tacos2.png")),
  const _Example01Tile(AssetImage("assets/images/pizza.jpg")),
  const _Example01Tile(AssetImage("assets/images/pizza_spain.jpg")),
  const _Example01Tile(AssetImage("assets/images/pizza2.png")),
  const _Example01Tile(AssetImage("assets/images/soup.jpg")),
  const _Example01Tile(AssetImage("assets/images/tacos.jpg")),
  const _Example01Tile(AssetImage("assets/images/tacos2.png")),
  const _Example01Tile(AssetImage("assets/images/pizza.jpg")),
];

