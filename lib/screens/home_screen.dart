import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
        elevation: 0,
      ),
      body:ListView.separated(
        itemBuilder: (BuildContext context, int index) => 
        ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(menuOptions[index].icon),
          onTap: (){
            //print(AppRoutes.getAppRoutes().keys);
            //print("imprimiendo: ${AppRoutes.getAppRoutes(['name'])}");
            //final route = MaterialPageRoute(builder: (context) => const ListView1Screen());

            //Navigator.push(context, route);
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: (BuildContext _, int __) => const Divider(), 
        itemCount: menuOptions.length,
      ),
    );
  }
}