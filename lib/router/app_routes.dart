import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    // MenuOption(
    //   route: 'home',
    //   icon: Icons.home_filled,
    //   name: 'Home Screen',
    //   screen: const HomeScreen(),
    // ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list_alt,
      name: 'list view 1',
      screen: const ListView1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_alt,
      name: 'list view 2',
      screen: const ListView2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alarm,
      name: 'alert',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.credit_card,
      name: 'card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
    ),

    MenuOption(
      route: 'animated',
      icon: Icons.play_circle_fill_outlined,
      name: 'Animated Container',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'input',
      icon: Icons.input_rounded,
      name: 'Text inputs',
      screen: const InputScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.slow_motion_video,
      name: 'Slider and checks',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'listviewbuilder',
      icon: Icons.build_circle_outlined,
      name: 'Infinite Scroll & Pull to Refresh',
      screen: const ListViewBuilderScreen(),
    ),
  ];
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen()
  // };
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
