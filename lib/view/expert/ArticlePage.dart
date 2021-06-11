import 'package:flutter/material.dart';
import '../../const.dart';
import 'package:gp_app/view/expert/ArticlesCard.dart';

class ArticlePage extends StatelessWidget {
  static const String id = 'articlePage';
  var articleTitle;
  var articleImage;
  var articleDescription;
  var author;

  ArticlePage(
      {this.articleDescription,
      this.articleTitle,
      this.articleImage,
      this.author});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backwardsCompatibility: true,
        title: Text(
          articleTitle,
          style: TextStyle(
            fontSize: 25.00,
            fontWeight: FontWeight.w600,
            color: KTextLightColour,
          ),
        ),
      ),
      body: ArticlesCard(
        details: Center(
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: kInActiveBackButtonColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(articleImage),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(articleTitle, style: kWelcomeScreensTitleText),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                author,
                                textAlign: TextAlign.left,
                                style: kTextDescription.copyWith(
                                  fontSize: 18,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      articleDescription,
                      style: kTextDescription.copyWith(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

    );
  }
}
