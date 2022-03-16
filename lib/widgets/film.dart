import 'package:flutter/material.dart';
import 'package:store_ui_design/widgets/detail_page.dart';


class FilmPost extends StatefulWidget {
  final String logoPath, img1Path, img2Path, img3Path, desc, title;

  FilmPost(
      {Key? key,
      required this.logoPath,
      required this.desc,
      required this.title,
      required this.img1Path,
      required this.img2Path,
      required this.img3Path})
      : super(key: key);

  @override
  State<FilmPost> createState() => _FilmPostState(logoPath: logoPath, img1Path: img1Path, img2Path: img2Path, img3Path: img3Path, desc: desc, title: title);
}

class _FilmPostState extends State<FilmPost> {
  final String logoPath, img1Path, img2Path, img3Path, desc, title;
  _FilmPostState( 
      {Key? key,
     required this.logoPath, required this.img1Path, required this.img2Path, required this.img3Path, required this.desc, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
            borderRadius: BorderRadius.circular(16),
            elevation: 4,
            //color: Colors.blue.shade300,
            child: Container(
              height: 450,
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
                                image: DecorationImage(
                                    image: AssetImage(logoPath),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title,
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              const Text(
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
                    height: 10,
                  ),
                   Text(
                    desc,
                    style: const TextStyle(
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
                    //image 1
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                 Detay(imgPath: img1Path, title: desc.split(' ')[0].toString(), price: '\$45')));
                      },
                      child: Container(
                        height: (MediaQuery.of(context).size.width - 100) / 1.5,
                        width: (MediaQuery.of(context).size.width - 100) / 2.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                img1Path,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        //image 2
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                     Detay(imgPath: img1Path, title: desc.split(' ')[0].toString(), price: '\$45')));
                          },
                          child: Hero(
                            tag: img2Path,
                            child: Container(
                              height:
                                  (MediaQuery.of(context).size.width - 100) /
                                      3.25,
                              width: (MediaQuery.of(context).size.width - 100) /
                                  1.75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image:  DecorationImage(
                                    image: AssetImage(
                                      img2Path,
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        //image 3
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                     Detay(imgPath: img1Path, title: desc.split(' ')[0].toString(), price: '\$45')));
                          },
                          child: Hero(
                            tag: img3Path,
                            child: Container(
                              height:
                                  (MediaQuery.of(context).size.width - 100) /
                                      3.25,
                              width: (MediaQuery.of(context).size.width - 100) /
                                  1.75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      img3Path,
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
