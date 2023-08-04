import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'info_section/cubit/index_cubit.dart';
import 'home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitIndex(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home:  MyWidget(),
        ),
    );
  }
}