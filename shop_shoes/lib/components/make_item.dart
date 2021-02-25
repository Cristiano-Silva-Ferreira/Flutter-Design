import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget makeItem({image, tag}) {
  return Hero(
    tag: tag,
    child: GestureDetector(
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
      ),
    ),
  );
}
