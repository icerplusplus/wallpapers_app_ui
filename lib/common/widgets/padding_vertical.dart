import 'package:flutter/material.dart';

class PaddingVertical extends StatefulWidget {
  final Widget child;
  const PaddingVertical({ super.key, required this.child });

  @override
  _PaddingVerticalState createState() => _PaddingVerticalState();
}

class _PaddingVerticalState extends State<PaddingVertical> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
      child: widget.child,
    );
  }
}