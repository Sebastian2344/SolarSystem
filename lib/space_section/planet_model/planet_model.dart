import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;
import '../../info_section/cubit/index_cubit.dart';
class Planet extends StatefulWidget {
  final Animation<double> animation;
  final int offset;
  final double d;
  final String image;
  final String planetName;

  const Planet(
      {super.key,
      required this.animation,
      required this.offset,
      required this.d,
      required this.image,
      required this.planetName});

  @override
  State<Planet> createState() => _PlanetState();
}

class _PlanetState extends State<Planet> with TickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<double>animation;
  @override
  void initState() { 
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
     animation = Tween<double>(begin: 0,end: 2 * math.pi).animate(animationController);
  }
  @override 
  void dispose() {
   animationController.dispose();
    super.dispose();
  }
  @override 
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.animation,
      builder: (BuildContext context, child) {
        return Transform.translate(
          offset: Offset(
            math.cos(widget.animation.value) *
                widget.offset, 
            math.sin(widget.animation.value) * widget.offset, 
          ),
          child: GestureDetector(
            onTap: () {
              context.read<CubitIndex>().setIndex(widget.planetName);
            },
             child: ClipOval(
               child: AnimatedBuilder(
                animation: animation,
                builder:(context, child) {
                  return Transform.rotate(
                  angle:animation.value,
                   child: MouseRegion(
                     cursor: SystemMouseCursors.click,
                     child: Image(image: AssetImage(widget.image),width: widget.d,
                    height: widget.d,),
                   ),
                 );
                },
                 
               ),
             ),

        ));
      },
    );
  }
}