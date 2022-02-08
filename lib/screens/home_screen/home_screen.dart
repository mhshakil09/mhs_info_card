import 'package:flutter/material.dart';
import 'package:mhs_info_card/screens/home_screen/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
