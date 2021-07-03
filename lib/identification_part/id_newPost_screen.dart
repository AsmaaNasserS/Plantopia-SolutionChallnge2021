// import 'package:flutter/material.dart';
// import 'package:gp_app/identification_part/identifcationscreen.dart';
// import 'package:gp_app/view/profile/NewPostScreen.dart';
//
// class IdAndPostScreen extends StatefulWidget {
//   @override
//   _IdAndPostScreenState createState() => _IdAndPostScreenState();
// }
//
// class _IdAndPostScreenState extends State<IdAndPostScreen> {
//  final PageController _controller = PageController(initialPage: 0);
//
//  List screens = [ IdentificationScreen(), NewPostScreen()];
//  int curPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//     Scaffold(
//       body: PageView.builder(scrollDirection: Axis.horizontal,
//         controller: _controller,
//         onPageChanged: (index){
//         setState(() {
//           curPage = index;
//
//         });
//         },
//         itemCount: screens.length,
//         itemBuilder: (ctx, i) => screens[i],
//     ),);
    //   CarouselSlider(
    //     items: child,
    //     carouselController: buttonCarouselController,
    //     options: CarouselOptions(
    //     autoPlay: false,
    //     enlargeCenterPage: true,
    //     viewportFraction: 0.9,
    //     aspectRatio: 2.0,
    //     initialPage: 2,
    // ),;
//   }
// }
