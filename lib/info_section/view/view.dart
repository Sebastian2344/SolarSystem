import 'package:flutter/material.dart';
import '../cubit/index_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class InfoSection extends StatelessWidget { 

  final double widthScreen;
  const InfoSection({super.key,required this.widthScreen});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Container(
              color: const Color.fromARGB(255, 23, 8, 94),
              width: widthScreen,
              height: 300,
              child: Center(
                  child: BlocBuilder<CubitIndex,String>(
                    builder:(context, _){
                      return Column(
                      children: [
                        Container(
                          color: const Color.fromARGB(199, 47, 1, 253),
                          width: widthScreen,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              context.read<CubitIndex>().showTitle(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 188, 235, 169)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                          child: SizedBox(
                            width: widthScreen*0.9,
                            height: widthScreen / 4,
                            child: Center(
                              child: SingleChildScrollView(
                                child: Text(
                                  context.read<CubitIndex>().showDescription(),
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 197, 181, 255)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: context.read<CubitIndex>().isButtonVisible(),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: ElevatedButton(
                                onPressed: () {
                                 context.read<CubitIndex>().setIndex('Układ Słoneczny');
                                },
                                style: const ButtonStyle(
                                    fixedSize:
                                        MaterialStatePropertyAll(Size(300, 30)),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(255, 6, 2, 68)),
                                    foregroundColor:
                                        MaterialStatePropertyAll(Colors.white),
                                    shape:
                                        MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))),
                                child: const Text('Zamknij opis')),
                          ),
                        )
                      ],
                    );
                    } ,
                     
                  )),
            ),
          );
  }
}