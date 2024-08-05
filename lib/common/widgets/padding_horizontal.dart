import 'package:flutter/material.dart';

class PaddingHorizontal extends StatefulWidget {
  final Widget child;
  PaddingHorizontal({ super.key, required this.child });

  @override
  PaddingHorizontalState createState() => PaddingHorizontalState();
}

class PaddingHorizontalState extends State<PaddingHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14, right: 14),
      child: widget.child,
    );
  }
}