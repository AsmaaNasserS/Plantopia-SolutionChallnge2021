
import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:gp_app/const.dart';

class AdminPage extends StatefulWidget {
  static String id = 'Admin_Page';
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  var data1 = [0.0,-2.0,3.5,-2.0,0.5,0.7,0.8,1.0,2.0,3.0,3.2];

  Map<String, double> dataMap = {
    "Admin": 3,
    "Experts": 3,
    "Users": 4,
  };
  List<Color> colorList = [
    Colors.grey[400],
    kInActiveOrangeColor,
    kInActivelogInButtonColor,
  ];

  Material circularChart(String title, String subtitle){
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: kTextBoldColour,
      child: Center(
        child:Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child:Text(title,style:TextStyle(
                    fontSize: 25.0,
                    color: kActivelogInButtonColor,
                    fontWeight: FontWeight.w500,
                  ),),
                ),

                Padding(
                  padding: EdgeInsets.all(2.0),
                  child:Text(subtitle,style:TextStyle(
                    fontSize: 20.0,
                  ),),
                ),

                PieChart(
                  dataMap: dataMap,
                  chartLegendSpacing: 3,
                  chartRadius: MediaQuery.of(context).size.width *0.25,
                  chartType: ChartType.disc,
                  colorList: colorList,
                  legendOptions: LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.right,
                    showLegends: true,
                    legendShape: BoxShape.circle,
                    legendTextStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  chartValuesOptions: ChartValuesOptions(
                      showChartValueBackground: false,
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: false,
                      chartValueStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 10.0,
                      )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Material lineChart1(String title, String priceVal,String subtitle) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: kTextBoldColour,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(title, style: TextStyle(
                      fontSize: 25.0,
                      color: kActivelogInButtonColor,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(priceVal, style: TextStyle(
                      fontSize: 20.0,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(subtitle, style: TextStyle(
                      fontSize: 18.0,
                      color: kTextBoldColour,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: new Sparkline(
                      data: data,
                      lineColor: kInActivelogInButtonColor,
                      pointsMode: PointsMode.all,
                      pointSize: 8.0,
                      pointColor:kInActiveOrangeColor ,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material textCharts(String title, String subtitle){
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor:kTextBoldColour,
      child: Center(
        child:Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child:Text(title,style:TextStyle(
                      fontSize: 20.0,
                      color: kActivelogInButtonColor,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child:Text(subtitle,style:TextStyle(
                      fontSize: 20.0,
                    ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material lineChart2(String title, String priceVal,String subtitle) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor:kTextBoldColour,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(title, style: TextStyle(
                      fontSize: 25.0,
                      color: kActivelogInButtonColor,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(priceVal, style: TextStyle(
                      fontSize: 20.0,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(subtitle, style: TextStyle(
                      fontSize: 18.0,
                      color: kTextBoldColour,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: new Sparkline(
                      data: data1,
                      lineColor:kActivelogInButtonColor,
                      fillMode: FillMode.below,
                      fillGradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.green[800], Colors.green[200]],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:kBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: kWelcomeScreensTitleText,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: kInActiveBackButtonColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: kTextBoldColour),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: mediaQuery.height * 0.02,
                  ),
                  child:lineChart1("Sales by Month","0.15K","+12.9% of target") ,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height:  mediaQuery.height * 0.28,
                  width: mediaQuery.width * 0.52,
                  child:circularChart("Users","0.05K"),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom:8),
                      height: mediaQuery.height * 0.14,
                      width: mediaQuery.width * 0.32,
                      child:textCharts("Mktg. Spend","0.05K") ,
                    ),
                    Container(
                      height:  mediaQuery.height * 0.14,
                      width: mediaQuery.width * 0.32,
                      child:textCharts("Profits","0.1K"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: mediaQuery.height * 0.02,
                  ),
                  child:lineChart2("Conversion","0.2K","+19% of target"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

