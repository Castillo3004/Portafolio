import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';




class AppRoutes {

  static const initialRoute = '/home';


  static final menuOptions = <MenuOption>[
    // TODO: borrar home

    // MenuOption(route: '/home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: '/listView1', name: 'List View Tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOption(route: '/listView2', name: 'List View Tipo 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: '/alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: '/card', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: '/avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: '/animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: '/inputs', name: 'Text Inputs', screen: const InputScreen(), icon: Icons.input_rounded ),
    MenuOption(route: '/slider', name: 'Slider and Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded ),
    MenuOption(route: '/listViewBuilder', name: 'InfiniteScroll & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined ),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({ '/home': (BuildContext context) => const HomeScreen()});
   
    for ( final option in menuOptions ){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }


  // static Map<String, Widget Function(BuildContext)> routes = {
  //     '/home':(BuildContext context) => const HomeScreen(),
  //     '/listView1':(BuildContext context) => const ListView1Screen(),
  //     '/listView2':(BuildContext context) => const ListView2Screen(),
  //     '/alert':(BuildContext context) => const AlertScreen(),
  //     '/card':(BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute ( RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen() 
    );
  }

}