/*
import 'package:flutter/material.dart';

import '../detay_page.dart';

class FilmPost extends StatefulWidget {

  FilmPost(
      {Key? key })
      : super(key: key);

  @override
  State<FilmPost> createState() => _FilmPostState();
}

class _FilmPostState extends State<FilmPost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
            borderRadius: BorderRadius.circular(16),
            elevation: 4,
            //color: Colors.blue.shade300,
            child: Container(
              height: 425,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  //dlete(),
                  const SizedBox(width: 10),
                  SizedBox(
                    //width: MediaQuery.of(context).size.width - 160,
                    width: double.infinity,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage('assets/cinema1.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Craft Cinema ',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '34 mins ago',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 22,
                          ),
                        ]),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'This official website features a ribbed knit zipper jacket that is'
                    'modern and stylish. It looks very temparament and is recommend to friends',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  const SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const Detay(imgPath: 'assets/film1.jpg')));
                      },
                      child: Container(
                        height: (MediaQuery.of(context).size.width - 100) / 1.5,
                        width: (MediaQuery.of(context).size.width - 100) / 2.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/film1.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const Detay(imgPath: 'assets/film1.jpg')));
                          },
                          child: Hero(
                            tag: 'assets/film12.jpg',
                            child: Container(
                              height:
                                  (MediaQuery.of(context).size.width - 100) /
                                      3.25,
                              width: (MediaQuery.of(context).size.width - 100) /
                                  1.75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/film1land22.jpg',
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const Detay(imgPath: 'assets/film1.jpg')));
                          },
                          child: Hero(
                            tag: 'assets/film13.jpg',
                            child: Container(
                              height:
                                  (MediaQuery.of(context).size.width - 100) /
                                      3.25,
                              width: (MediaQuery.of(context).size.width - 100) /
                                  1.75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/film1land.jpg',
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10)
                  ]),

                  const Divider(),

                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '1.7k',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.reply,
                        textDirection: TextDirection.rtl,
                        color: Colors.brown.withOpacity(0.2),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '325',
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
*/