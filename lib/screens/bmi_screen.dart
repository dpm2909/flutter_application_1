import 'dart:html';

import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key }) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  final double fontSize = 18;
  String result = '';
  bool isMetric = true;
  bool isImperial = false;
  double? height;
  double? weight;
  late List<bool> isSelected;

@override
  void initState() {
    isSelected = [isMetric, isImperial];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI calculator')),
      bottomNavigationBar: MenuBottom(),
      drawer: MenuDrawer(),
      body: Column(children: [
        ToggleButtons(children: 
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text('Imperial', style: TextStyle(fontSize: fontSize)),
        ), 
        ],
        isSelected: isSelected,
        onPressed:toggleMeasure
      ),
    );
  }

  void toggleMeasure(value) {
        if(value == 0){
          isMetric = true;
          isImperial = false;
        } else{
          isMetric = false;
          isImperial = true;
        }
        setState(() {
          isSelected =[isMetric, isImperial];
        });
      }
}