import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl: 'https://wallpaperaccess.com/full/206895.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://hdwallpaperim.com/wp-content/uploads/2017/08/22/386516-space-planet-universe-digital_art-landscape-space_art.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://img.freepik.com/free-vector/mars-purple-space-landscape-with-large-planets-purple-starry-sky_7993-7257.jpg?w=2000',
              name: 'The space',
            ),
            SizedBox(height: 10),
          ],
        ));
  }
}
