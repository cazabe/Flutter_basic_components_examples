import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final games = const ['Megaman', 'Metal Gear', 'Final Fantasy', 'The last of us'];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('List view tipo 2'),
        ),
      ),
      body: ListView.separated(
        itemCount: games.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(games[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
