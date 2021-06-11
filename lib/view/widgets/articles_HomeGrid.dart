import 'package:flutter/material.dart';

import '../expert/Articles.dart';
import '../expert/ArticlesCard.dart';
import '../expert/ArticlePage.dart';
class HomeArticles extends StatelessWidget {
  const HomeArticles({
    Key key,
    @required this.mediaQuery,
  }) : super(key: key);

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(9.0),
      childAspectRatio: 1.3,
      mainAxisSpacing: 9,
      crossAxisSpacing: 0,
      crossAxisCount: 1,
      scrollDirection: Axis.horizontal,
      children: List.generate(articles.length, (index) {
        return ArticlesCard(
          details: Stack(
              alignment: Alignment.bottomLeft,
              children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Image(
                image: AssetImage(articles[index].articleImage),
                fit: BoxFit.cover,
                height: mediaQuery.height * 0.2,
                width: mediaQuery.width * 0.4,
              ),
            ),
            Container(
              height: mediaQuery.height * 0.2,
              width: mediaQuery.width * 0.4,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.65),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
            Container(
              width: mediaQuery.width * 0.4,
              padding: EdgeInsets.symmetric(vertical:30,horizontal: 10),
              child: Text( articles[index].title,
                textAlign:TextAlign.start,


                style: TextStyle(

                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                overflow: TextOverflow.visible,
              ),
            ),
          ]),
          onPress: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticlePage(
                      articleImage: articles[index].articleImage,
                      articleTitle: articles[index].title,
                      articleDescription: articles[index].description,
                  author: articles[index].owner,),
                ));
          },
        );
      })
    );
  }
}
