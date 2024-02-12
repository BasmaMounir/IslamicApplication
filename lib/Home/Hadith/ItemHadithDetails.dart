import 'package:flutter/material.dart';

class ItemHadithDetails extends StatelessWidget {
  String hadith;

  ItemHadithDetails({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return Text(
      hadith,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
