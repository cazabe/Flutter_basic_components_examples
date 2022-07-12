import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final games = const ['Megaman', 'Metal Gear', 'Final Fantasy', 'The last of us'];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('List view tipo 1'),
          ),
        ),
        body: ListView(
          children: [
            ...games
                .map(
                  (game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                )
                .toList()
          ],
        ));
  }
}
