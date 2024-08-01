import 'package:flutter/material.dart';

class LoadingIndicator extends StatefulWidget {
  final double width;
  const LoadingIndicator({super.key, required this.width});

  @override
  State<LoadingIndicator> createState() =>
      _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = false;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: widget.width ?? 100,
            child: LinearProgressIndicator(
              color: const Color(0xffffffff),
              value: controller.value,
              minHeight: 6,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
          )
        ],
      ),
    );
  }
}
