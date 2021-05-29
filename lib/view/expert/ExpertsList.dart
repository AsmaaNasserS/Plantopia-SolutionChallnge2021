import 'package:flutter/material.dart';
import 'package:gp_app/view/widgets/side_drawer.dart';

import '../../const.dart';
import 'Expert.dart';
import 'ExpertCard.dart';
import 'ExpertsProfile.dart';

class ExpertsList extends StatefulWidget {
  static const String id = 'AllExpertsScreen';

  String expertImage;
  String name;
  String title;
  String bio;
  var languages;
  double price;

  ExpertsList(
      {this.expertImage,
      this.name,
      this.title,
      this.bio,
      this.languages,
      this.price});

  @override
  _ExpertsListState createState() => _ExpertsListState(
      expertImage: this.expertImage,
      name: this.name,
      title: this.title,
      bio: this.bio,
      languages: this.languages,
      price: this.price);
}

class _ExpertsListState extends State<ExpertsList> {
  String expertImage;
  String name;
  String title;
  String bio;
  var languages;
  double price;

  _ExpertsListState(
      {this.expertImage,
      this.name,
      this.title,
      this.bio,
      this.languages,
      this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meet our experts',
          style: kWelcomeScreensTitleText,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: kInActiveBackButtonColor,
      ),
      drawer: sideDrawer(),
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
                Image(image: AssetImage(experts[index].expertImage)),
                SizedBox(
                  height: 15,
                ),
                Text(
                  experts[index].name,
                  style: kExpertsDescriptionTexts,
                ),
              ],
            ),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExpertsProfile(
                        expertImage: experts[index].expertImage,
                        expertName: experts[index].name,
                        expertTitle: experts[index].title,
                        expertBio: experts[index].bio,
                        expertLanguages: experts[index].languages,
                        expertPrice: experts[index].price),
                  ));
            },
          );
        }),
      ),
    );
  }
}
