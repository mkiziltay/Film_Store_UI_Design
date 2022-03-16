import 'package:flutter/material.dart';

class TitleAndDivider extends StatelessWidget {
  final String title;
  final double fromTop;
  final double fromBottom;
  const TitleAndDivider({required this.title, required this.fromTop, required this.fromBottom,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column( children: [
      SizedBox(height: fromTop),
       Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 1,
              width: 10,
              color: Colors.black,
            )),
        Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, fontFamily: 'Dancing'),
            )),
        Expanded(
            flex: 7,
            child: Container(
              height: 1,
              width: 10,
              color: Colors.black,
            )),
      ]),
      SizedBox(height: fromBottom)],
    );
  }
}
