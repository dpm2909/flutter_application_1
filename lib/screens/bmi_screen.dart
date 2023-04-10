import '../shared/menu_drawer.dart';
import 'package:flutter/material.dart';
import '../shared/menu_bottom.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI calculator')),
      bottomNavigationBar: MenuBottom(),
      drawer: MenuDrawer(),
      body: Center( child: FlutterLogo()),
    );
  }
}
