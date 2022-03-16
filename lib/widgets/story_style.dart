import 'package:flutter/material.dart';

import 'detail_page.dart';

class StoryStyle extends StatelessWidget {
  final String imgPath, logoPath;
  const StoryStyle({ required this.imgPath, required this.logoPath,
    Key? key,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: size.height * 0.1,
              width: size.height * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: size.height * 0.07,
              child: Container(
                height: size.height * 0.03,
                width: size.height * 0.03,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage(logoPath),
                        fit: BoxFit.cover)),
              ),
            )
          ],
        ),
        InkWell(
          onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Detay(imgPath: 'assets/film1.jpg', title: 'JOKER', price: '\$45')));
                      },
          child: Container(
            margin: const EdgeInsets.all(8),
            padding: EdgeInsets.only(left: size.width*0.01, top: size.width*0.008,),
            height: size.height * 0.03,
            width: size.height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.blue.withOpacity(0.7)),
            child: Text(
              ' Show',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        )
      ],
    );
  }
}
