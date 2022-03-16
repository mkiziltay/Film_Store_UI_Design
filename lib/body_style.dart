import 'package:flutter/material.dart';
import 'package:store_ui_design/del_card_style.dart';
import 'package:store_ui_design/widgets/film.dart';
import 'del_detay_page.dart';
//import 'widgets/film_post.dart';
import 'widgets/story_style.dart';
import 'widgets/title_and_dividerline.dart';

class BodyStyle extends StatelessWidget {
  const BodyStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      //color: Colors.amber,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 8, right: 8) ,child: TitleAndDivider(title: 'Trending', fromTop: 5, fromBottom: 5)),
            Container(
              width: double.infinity,
              height: size.height * 0.16,
              //color: Colors.green,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  const StoryStyle(
                      imgPath: 'assets/film1.jpg',
                      logoPath: 'assets/cinema1.png'),
                  SizedBox(
                    width: size.width * 0.07,
                  ),
                  const StoryStyle(
                      imgPath: 'assets/film2.jpg',
                      logoPath: 'assets/cinema2.png'),
                  SizedBox(
                    width: size.width * 0.07,
                  ),
                  const StoryStyle(
                      imgPath: 'assets/film1land.jpg',
                      logoPath: 'assets/cinema1.png'),
                  SizedBox(
                    width: size.width * 0.07,
                  ),
                  const StoryStyle(
                       imgPath: 'assets/film2land2.jpg',
                      logoPath: 'assets/cinema2.png'),
                  SizedBox(
                    width: size.width * 0.07,
                  ),
                  const StoryStyle(
                      imgPath: 'assets/film1.jpg',
                      logoPath: 'assets/cinema1.png'),
                  SizedBox(
                    width: size.width * 0.07,
                  ),
                  const StoryStyle(
                       imgPath: 'assets/film2.jpg',
                      logoPath: 'assets/cinema2.png'),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                ],
              ),
            ),
            //Container(child: CardStyle()),
            //FilmPost(),
            FilmPost(title: 'Craft Cinema ', logoPath: 'assets/cinema1.png', img1Path: 'assets/film1.jpg', img2Path: 'assets/film1land.jpg', img3Path: 'assets/film1land2.jpg',
            desc: 'Joker is a 2019 American psychological thriller film directed and produced by Todd Phillips, who co-wrote the screenplay with Scott Silver.'
                    'The film, based on DC Comics characters, stars Joaquin Phoenix as the Joker and provides a possible origin story for the character.',),
            FilmPost(title: 'Cineflex', logoPath: 'assets/cinema2.png', img1Path: 'assets/film2.jpg', img2Path: 'assets/film2land.jpg', img3Path: 'assets/film2land2.jpg',
            desc: 'Us is a 2019 American horror film directed by Jordan Peele, starring Lupita Nyong\'o, Winston Duke, Elisabeth Moss, and Tim Heidecker.'
            'Us had its world premiere at South by Southwest on March 8, 2019, and was theatrically released in the United States on 03-22, 2019',),
          ],
        ),
      ),
    );
  }
}



class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage('assets/model1.jpeg'), fit: BoxFit.cover)),
    );
  }
}
