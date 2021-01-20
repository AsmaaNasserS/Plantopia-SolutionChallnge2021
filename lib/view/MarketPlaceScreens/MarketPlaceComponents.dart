import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/MarketPlaceScreens/EditProductProfile.dart';
import 'ProductDetails.dart';

//search bar full code to be used later on with the databse retrived

// class HomePage extends StatefulWidget {
//   final List<String> list = List.generate(10, (index) => "Text $index");
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: <Widget>[
//           IconButton(
//             onPressed: () {
//               showSearch(context: context, delegate: Search(widget.list));
//             },
//             icon: Icon(Icons.search),
//           )
//         ],
//         centerTitle: true,
//         title: Text('Search Bar'),
//       ),
//       body: ListView.builder(
//         itemCount: widget.list.length,
//         itemBuilder: (context, index) => ListTile(
//           title: Text(
//             widget.list[index],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Search extends SearchDelegate {
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return <Widget>[
//       IconButton(
//         icon: Icon(Icons.close),
//         onPressed: () {
//           query = "";
//         },
//       ),
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }
//
//   String selectedResult = "";
//
//   @override
//   Widget buildResults(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text(selectedResult),
//       ),
//     );
//   }
//
//   final List<String> listExample;
//   Search(this.listExample);
//
//   List<String> recentList = ["Text 4", "Text 3"];
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> suggestionList = [];
//     query.isEmpty
//         ? suggestionList = recentList //In the true case
//         : suggestionList.addAll(listExample.where(
//       // In the false case
//           (element) => element.contains(query),
//     ));
//
//     return ListView.builder(
//       itemCount: suggestionList.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(
//             suggestionList[index],
//           ),
//           leading: query.isEmpty ? Icon(Icons.access_time) : SizedBox(),
//           onTap: (){
//             selectedResult = suggestionList[index];
//             showResults(context);
//           },
//         );
//       },
//     );
//   }
// }


//////////////////////////////////////////////////////////////////////////////////////////////

class MyStoreCard2 extends StatelessWidget {
  const MyStoreCard2({
    Key key,
    @required this.mediaQuery,
  }) : super(key: key);

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    //card
    // we wrapped the card with a container to ba able to manage the height
    return Container(
      height: mediaQuery.height * 0.2,
      child: Card(
        semanticContainer: true,
        elevation: 5, // shadow
        color: kCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
              leading: Container(
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'images/img.jpg',
                  ),
                ),
              ),
              title: Text(
                'Sun Flower Seeds',
                style: TextStyle(
                  fontSize: 30.0,
                  color: kTextBoldColour,
                ),
              ),

              subtitle: Text(
                'body 2 ',
                style: TextStyle(
                  fontSize: 18.0,
                  color: KTextLightColour,
                ),
              ),
            ),
            // We rapped the button inside a row to have it in the right
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('30LE', style: kBodyTextColour, textAlign: TextAlign.left ,),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(right: 20),

                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: kInActivelogInButtonColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductDetails(),
                        ));
                      },
                      child: Text(
                        'View Details',
                        style: klogInButtonTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

//////////////////////////////////////////// My store card

class MyStoreCard1 extends StatelessWidget {
  const MyStoreCard1({
    Key key,
    @required this.mediaQuery,
  }) : super(key: key);

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    //card
    // we wrapped the card with a container to ba able to manage the height
    return Container(
      height: mediaQuery.height * 0.2,
      child: Card(
        semanticContainer: true,
        elevation: 5, // shadow
        color: kCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
              leading: Container(
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'images/img.jpg',
                  ),
                ),
              ),
              title: Text(
                'Sun Flower Seeds',
                style: TextStyle(
                  fontSize: 30.0,
                  color: kTextBoldColour,
                ),
              ),

              subtitle: Text(
                'body 2 ',
                style: TextStyle(
                  fontSize: 18.0,
                  color: KTextLightColour,
                ),
              ),
            ),
            // We rapped the button inside a row to have it in the right
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 115),
                  child: Text('30LE', style: kBodyTextColour, textAlign: TextAlign.left ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: kInActivelogInButtonColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditProductProfile(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'View Details',
                        style: klogInButtonTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}