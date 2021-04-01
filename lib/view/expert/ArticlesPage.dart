import 'package:flutter/material.dart';
import '../../const.dart';
//import 'file:///C:/Users/Lenovo/AndroidStudioProjects/Graduation-Project/lib/view/expert/ArticlesCard.dart';
import 'package:gp_app/view/expert/ArticlesCard.dart';

class ArticlesPage extends StatelessWidget {

  var articleTitle;
  var articleImage;
  var articleDescription;

  ArticlesPage({this.articleDescription , this.articleTitle , this.articleImage});

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
                    Image(image: AssetImage(articleImage)),
                    SizedBox(height: 20,),
                    Text(articleTitle , style: kWelcomeScreensTitleText,),
                    SizedBox(height: 20,),
                    Text(articleDescription , style: kExpertsDescriptionTexts,)
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
