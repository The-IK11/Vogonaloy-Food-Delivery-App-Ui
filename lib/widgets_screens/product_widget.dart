
import 'package:flutter/material.dart';

class products_widgets extends StatelessWidget {
  final height;
  final width;
  final child;
  const products_widgets({
    super.key,  required this.height, required this.width, this.child,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(12),

            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]),
        child: child,
      ),
    );
  }
}