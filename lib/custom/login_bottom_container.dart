import 'dart:math';

import 'package:flutter/material.dart';
import 'bottom_custom.dart';

class BezierContainerBottom extends StatelessWidget {
  const BezierContainerBottom({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/0.7,
      child: ClipPath(
        clipper: ClipPainter(),
        child: Container(
          height: MediaQuery.of(context).size.height *.5,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [Colors.blueAccent,Colors.black87]
              )
          ),
        ),
      ),
    );
  }
}