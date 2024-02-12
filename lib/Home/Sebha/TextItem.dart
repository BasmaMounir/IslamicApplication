import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
  String txt;
  double Ratio;

  TextItem({required this.txt, required this.Ratio});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * Ratio),
        decoration: BoxDecoration(
            color: Color(0x70B7935F), borderRadius: BorderRadius.circular(35)),
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ));
  }
}
