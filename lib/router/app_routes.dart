import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';


class AppRoutes{


  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(route: 'home', name: 'Home Screen',  screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview', name: 'ListView 2 Screen',  screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListView 2 Screen',  screen: const ListView2Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'alert', name: 'Alert Screen',  screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'Card Screen',  screen: const CardScreen(), icon: Icons.credit_card),
  ];

  static const initialRoute = 'home';

  //static Map<String, Widget Function(BuildContext)> routes = {
  //      'alert'     :(BuildContext context )=> const AlertScreen(),
  //      'card'      :(BuildContext context )=> const CardScreen(),
  //      'home'      :(BuildContext context )=> const HomeScreen(),
  //      'listview1' :(BuildContext context )=> const ListView1Screen(),
  //      'listview2' :(BuildContext context )=> const ListView1Screen(),
  //};


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions ) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }
    return appRoutes;
  }



  static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
  }



}