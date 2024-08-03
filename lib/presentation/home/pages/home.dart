import 'package:flutter/material.dart';
import 'package:wallpapers_app_ui/presentation/home/widgets/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: MyAppBar(), body: SafeArea(child: Text("Home page")));
  }
}
