import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../const.dart';
import 'ArticlesPage.dart';
import 'ExpertCard.dart';
import 'file:///C:/Users/Lenovo/AndroidStudioProjects/Graduation-Project/lib/view/expert/Articles.dart';
import 'file:///C:/Users/Lenovo/AndroidStudioProjects/Graduation-Project/lib/view/expert/ArticlesCard.dart';


class ExpertsProfile extends StatefulWidget {
  var expertName;
  var expertTitle;
  var expertBio;
  var expertLanguages;
  var expertPrice;
  var ExpertImage;

  var ArticleTitle;
  var ArticleImage;
  var ArticleDescription;


  ExpertsProfile(
      {this.expertName,
      this.expertTitle,
      this.expertBio,
      this.expertLanguages,
      this.expertPrice,
      this.ExpertImage,
      this.ArticleImage,
      this.ArticleDescription,
      this.ArticleTitle});

  @override
  _ExpertsProfileState createState() => _ExpertsProfileState(
      ExpertImage: this.ExpertImage,
      expertName: this.expertName,
      expertTitle: this.expertTitle,
      expertBio: this.expertBio,
      expertLanguages: this.expertLanguages,
      expertPrice: this.expertPrice,
      ArticleTitle: this.ArticleTitle,
      ArticleDescription:this.ArticleDescription,
      ArticleImage: this.ArticleImage
  );
}

class _ExpertsProfileState extends State<ExpertsProfile> {
  CalendarController _controller;
  var expertName;
  var expertTitle;
  var expertBio;
  var expertLanguages;
  var expertPrice;
  var ExpertImage;
  var ArticleImage;
  var ArticleDescription;
  var ArticleTitle;

  _ExpertsProfileState(
      {this.ExpertImage,
      this.expertName,
      this.expertTitle,
      this.expertBio,
      this.expertLanguages,
      this.expertPrice,
      this.ArticleImage,
      this.ArticleDescription,
      this.ArticleTitle});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ExpertCard(
                  details: Column(
                    children: [
                      Image(image: AssetImage(ExpertImage)),
                      SizedBox(height: 15,),
                      Text(expertName , style: kWelcomeScreensTitleText,),
                      SizedBox(height: 15,),
                      Text(expertTitle),
                      SizedBox(height: 15,),
                      Text(expertBio , style: kWelcomeScreensDescriptionText,),
                      SizedBox(height: 15,),
                      Text(expertLanguages),
                      SizedBox(height: 15,),
                      Text(expertPrice.toString()),
                      Icon(FontAwesomeIcons.tag , color: Colors.green,size: 20,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Center(
                  child: ButtonTheme(
                      buttonColor: Colors.green,
                      minWidth: 300.0,
                      height: 75.0,
                      child: RaisedButton(
                        onPressed: () {
                          _PopUp(context);
                        },
                        child: Text(
                          "Book an appointment",
                          style: klogInButtonTextStyle,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ))),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.calendar_today,
                    color: Colors.green,
                    size: 25.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    "haven't read Menna's articles yet?!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                height: 20,
                thickness: 2,
                indent: 20,
                endIndent: 0,
              ),
              Container(
                height: 400,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(1.5),
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 1.0,
                  crossAxisSpacing: 1.0,
                  crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(articles.length, (index) {
                    return ArticlesCard(
                      details: Column(
                        children: [
                          Image(image: AssetImage(articles[index].ArticleImage) , height: 200, width: 200),
                          Text(articles[index].title , style: kWelcomeScreensTitleText,),
                          //Text(articles[index].description)
                        ],
                      ),
                      OnPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ArticlesPage(ArticleImage:articles[index].ArticleImage , ArticleTitle:articles[index].title , ArticleDescription:articles[index].description),
                            ));
                      },
                    );
                  }),
                ),
              )
            ]
            ,
          ),
        ),
      ),
    );
  }

  void _PopUp(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  TableCalendar(
                    rowHeight: 40,
                    calendarController: _controller,
                  ),
                  ButtonTheme(
                      buttonColor: Colors.green,
                      minWidth: 100.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          _ThankYouPopUp(context);
                        },
                        child: Text(
                          "submit",
                          style: klogInButtonTextStyle,
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ))
                ],
              ),
            ),
          );
        });
  }

  void _ThankYouPopUp(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Text(
                    "Thank you",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text("your submission has been recorded"),
                  SizedBox(height: 15),
                  Icon(
                    FontAwesomeIcons.check,
                    color: Colors.green,
                    size: 40,
                  ),
                ],
              ),
            ),
          );
        });
  }
}