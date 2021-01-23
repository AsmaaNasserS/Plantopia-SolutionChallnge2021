import 'package:flutter/material.dart';

import '../../const.dart';
import 'Expert.dart';
import 'ExpertCard.dart';
import 'ExpertsProfile.dart';


class ExpertsList extends StatefulWidget {

  String ExpertImage;
  String name;
  String title;
  String bio;
  var languages;
  double price;

  ExpertsList({this.ExpertImage ,this.name , this.title , this.bio , this.languages , this.price });

  @override
  _ExpertsListState createState() => _ExpertsListState(ExpertImage:this.ExpertImage , name:this.name , title:this.title , bio:this.bio , languages:this.languages , price:this.price);
}

class _ExpertsListState extends State<ExpertsList> {

  String ExpertImage;
  String name;
  String title;
  String bio;
  var languages;
  double price;

_ExpertsListState({this.ExpertImage ,this.name , this.title , this.bio , this.languages , this.price });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(1.5),
        // card size
        childAspectRatio: 0.7,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        crossAxisCount: 2,
        children: List.generate(experts.length, (index) {
          return ExpertCard(
                  details: Column(
                    children: [
                      Image(image: AssetImage(experts[index].ExpertImage)),
                      SizedBox(height: 15,),
                      Text(experts[index].name , style: kExpertsDescriptionTexts,),
                    ],
                  ),

                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExpertsProfile(ExpertImage:experts[index].ExpertImage,expertName:experts[index].name,expertTitle:experts[index].title,  expertBio:experts[index].bio,expertLanguages:experts[index].languages,expertPrice:experts[index].price),
                    ));
                  },
          );

        }
        ),

      ),

    );
  }
}
