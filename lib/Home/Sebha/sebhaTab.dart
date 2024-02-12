import 'package:flutter/material.dart';
import 'package:islamic_app/Home/Sebha/TextItem.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int numberOfTasbih = 0, index = 0;
  List<String> Tasbih = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا حول ولا قوة الا بالله',
    'لا اله الا الله'
  ];
  double rotationAngle = 0.0;

  void rotateImage() {
    setState(() {
      rotationAngle += 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.0009),
                child: Image.asset('assets/images/head of seb7a.png')),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.09),
              child: Transform.rotate(
                  angle: rotationAngle * (3.14 / 180),
                  child: Image.asset('assets/images/body of seb7a.png')),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(
              'عدد التسبيحات',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: TextItem(
                txt: '$numberOfTasbih',
                Ratio: 0.4,
              )),
          InkWell(
              onTap: () {
                rotateImage();
                numberOfTasbih++;
                if (numberOfTasbih == 34) {
                  numberOfTasbih = 0;
                  index++;

                  if (index == Tasbih.length) index = 0;
                }
                setState(() {});
              },
              child: TextItem(
                txt: '${Tasbih[index]}',
                Ratio: 0.3,
              ))
        ],
      ),
    );
  }
}
