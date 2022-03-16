import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  final String imgPath, title, price;

  const Detay({Key? key, required this.imgPath, required this.title, required this.price}) : super(key: key);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      widget.imgPath,
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                             Text(
                              widget.title,
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              ' Available now',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                           
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                           Text(
                            widget.price,
                            style: const TextStyle(
                                fontFamily: 'Montserrat', fontSize: 22),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 30),
                            child: FloatingActionButton(
                              onPressed: () {},
                              child:
                                  const Center(child: Icon(Icons.arrow_forward_ios)),
                              backgroundColor: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height/2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Center(child: Text('TRAILER',style: TextStyle(fontFamily: 'Montserrat', color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios,color: Colors.white, size: 18,)
                ],
              ),
            ),
            
          )

        ],
      ),
    );
  }
}
