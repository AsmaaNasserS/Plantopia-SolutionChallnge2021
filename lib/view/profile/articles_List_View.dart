import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/expert/Articles.dart';
import 'package:gp_app/view/expert/ArticlePage.dart';
import 'package:gp_app/view/widgets/followbtn.dart';
import 'package:gp_app/view/widgets/smallGreenBtn.dart';

class ArticlesListView extends StatelessWidget {
  static const id = 'allArticles';

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All articles',
          style: TextStyle(
            fontSize: 25.00,
            fontWeight: FontWeight.w600,
            color: KTextLightColour,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: articles.length,
         padding: EdgeInsets.all( 5.0),
        itemBuilder: (context, i) {
          return Container(
            width: c_width,
            padding: EdgeInsets.symmetric(vertical: 1),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticlePage(
                      articleTitle: articles[i].title,
                      articleImage: articles[i].articleImage,
                      articleDescription: articles[i].description,
                      author: articles[i].owner,
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(articles[i].articleImage),
                          radius: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                articles[i].title,

                                style: TextStyle(
                                  fontSize: 20.00,
                                  fontWeight: FontWeight.w600,
                                  color: KTextLightColour,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                articles[i].owner,
                                style: TextStyle(
                                  fontSize: 16.00,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              //onPressed: () {},
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
