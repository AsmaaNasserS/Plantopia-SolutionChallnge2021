import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key key}) : super(key: key);
  static const String id = 'searchScreen';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget appBarTitle = Text("Search For What?", style: kWelcomeScreensTitleText, );
  Icon actionIcon = Icon(Icons.search , size: 30,);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title:appBarTitle,
          actions: <Widget>[
            IconButton(icon: actionIcon,onPressed:(){
              setState(() {
                if ( this.actionIcon.icon == Icons.search){
                  this.actionIcon = new Icon(Icons.close, size: 30);
                  this.appBarTitle = new TextField(
                    style: kTitleText,
                    decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search,color:kTextBoldColour),
                        hintText: "Search...",
                        hintStyle: kTitleText,
                    ),
                  );}
                else {
                  this.actionIcon = new Icon(Icons.search);
                  this.appBarTitle = new Text("Search For What?", style: kWelcomeScreensTitleText);
                }
              });
            } ,),],
      ),
      body: Container(
        color: kBackgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: mediaQuery.height * 0.07,
              horizontal: mediaQuery.width * 0.06),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                onPressed: () {

                },
                color: kInActivelogInButtonColor,
                minWidth: mediaQuery.width * 0.30,
                height: mediaQuery.height * 0.05,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child:
                Text('Users', style: kBottomButtonTextStyle),
              ),
              FlatButton(
                onPressed: () {},
                color: kInActivelogInButtonColor,
                minWidth: mediaQuery.width * 0.30,
                height: mediaQuery.height * 0.05,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child:
                Text('Articles', style: kBottomButtonTextStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}