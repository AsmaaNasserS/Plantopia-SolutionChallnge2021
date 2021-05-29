import 'package:flutter/material.dart';
import '../../const.dart';

//import 'file:///C:/Users/Lenovo/AndroidStudioProjects/Graduation-Project/lib/view/expert/ArticlesCard.dart';
import 'package:gp_app/view/expert/ArticlesCard.dart';

class ArticlesPage extends StatelessWidget {
  var articleTitle;
  var articleImage;
  var articleDescription;
  final String author;

  ArticlesPage(
      {this.articleDescription,
      this.articleTitle,
      this.articleImage,
      this.author = 'za3bolla'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backwardsCompatibility: true,
        ),
      body: ArticlesCard(
        details: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image(image: AssetImage(articleImage),),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        articleTitle,
                        style: kWelcomeScreensTitleText,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            author,
                            style: kTextDescription.copyWith(
                              fontSize: 18,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      articleDescription,
                      style: kTextDescription.copyWith(fontSize: 20, ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
