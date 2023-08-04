import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;

import '../../info_section/cubit/index_cubit.dart';
import '../planet_model/planet_model.dart';
class SpaceSection extends StatefulWidget {
  const SpaceSection({super.key,required this.widthScreen});
  final double widthScreen;
  @override
  State<SpaceSection> createState() => _SpaceSectionState();
}

class _SpaceSectionState extends State<SpaceSection> with TickerProviderStateMixin{
    late AnimationController _animationController;
  late AnimationController _animationController2;
  late AnimationController _animationController3;
  late AnimationController _animationController4;
  late Animation<double> _animation;
  late Animation<double> _animation2;
  late Animation<double> _animation3;
  late Animation<double> _animation4;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    )..repeat();

    _animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 14),
    )..repeat();

    _animationController3 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 13),
    )..repeat();
    _animation3 = Tween<double>(begin: 0, end: 2 * math.pi)
        .animate(_animationController3);

    _animationController4 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 18),
    )..repeat();
    _animation4 = Tween<double>(begin: 0, end: 2 * math.pi)
        .animate(_animationController4);

    _animation = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
    ).animate(_animationController);

    _animation2 = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
    ).animate(_animationController2);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationController2.dispose();
    _animationController3.dispose();
    _animationController4.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 2,
            child: InteractiveViewer(
              maxScale: 3,
              minScale: 1,
              panEnabled: false,
              child: Container(
                width: widget.widthScreen,
                color: Colors.black,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<CubitIndex>().setIndex('Słońce');
                      },
                      child: const ClipOval(
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Image(
                            width: 70,
                            height: 70,
                            image: AssetImage('assets/slonce.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Planet(
                      animation: _animation,
                      offset: 50,
                      d: 15,
                      image: 'assets/Merkury.jpg',
                      planetName: 'Merkury',
                    ),
                    Planet(
                      animation: _animation2,
                      offset: 100,
                      d: 30,
                      image: 'assets/Wenus.jpg',
                      planetName: 'Wenus',
                    ),
                    Planet(
                      animation: _animation3,
                      offset: 150,
                      d: 30,
                      image: 'assets/Ziemia.jpg',
                      planetName: 'Ziemia',
                    ),
                    Planet(
                      animation: _animation4,
                      offset: 190,
                      d: 20,
                      image: 'assets/Mars.jpg',
                      planetName:'Mars',
                    )
                  ],
                ),
              ),
            ),
          );
  }
}