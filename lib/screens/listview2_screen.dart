import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const['Megaman','Halo','Mario Kart','Mario Party','TFT'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        title: const Text('Listview2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
          onTap: () {

            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (BuildContext _, int __) => const Divider(),
      )
    );
  }
}