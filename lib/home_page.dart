import 'package:flutter/material.dart';

import 'info_section/view/view.dart';
import 'space_section/view/space.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Układ Słoneczny'),
        backgroundColor: const Color.fromARGB(255, 2, 36, 95),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpaceSection(widthScreen:widthScreen),
          InfoSection(widthScreen: widthScreen)
        ],
      ),
    );
  }
}
