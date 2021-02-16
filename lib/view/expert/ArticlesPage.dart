import 'package:flutter/material.dart';
import '../../const.dart';
//import 'file:///C:/Users/Lenovo/AndroidStudioProjects/Graduation-Project/lib/view/expert/ArticlesCard.dart';
import 'package:gp_app/view/expert/ArticlesCard.dart';

class ArticlesPage extends StatelessWidget {

  var ArticleTitle;
  var ArticleImage;
  var ArticleDescription;

  ArticlesPage({this.ArticleDescription , this.ArticleTitle , this.ArticleImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ArticlesCard(
        details:
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image(image: AssetImage(ArticleImage)),
                    SizedBox(height: 20,),
                    Text(ArticleTitle , style: kWelcomeScreensTitleText,),
                    SizedBox(height: 20,),
                    Text(ArticleDescription , style: kExpertsDescriptionTexts,)
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
