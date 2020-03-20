import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: color,

          child: MaterialButton(
              child: Text("Text without function"),
              color: Colors.lightBlue,


            )

    );
  }
}