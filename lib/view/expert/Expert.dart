import 'package:flutter/cupertino.dart';

class Expert
{
  String expertImage;
  String name;
  String title;
  String bio;
  String languages;
  double price;
  Widget text;

  Expert({@required this.expertImage ,@required this.name,this.title,this.bio,this.languages,this.price , this.text});





}


/*List<Expert> experts=[
  Expert(
    ExpertImage: 'images/expert1.png',
    name: 'Menna Sayed',
  ),
  Expert(
      ExpertImage: 'images/expert2.png',
      name: 'Mayan Mohamed',),
  Expert(
      ExpertImage: 'images/expert3.png',
      name: 'Maryam emad',),
  Expert(
      ExpertImage: 'images/expert4.png',
      name: 'Mayar El awady',),
  Expert(
      ExpertImage: 'images/expert5.png',
      name: 'Asmaa',),
  Expert(
      ExpertImage: 'images/expert6.png',
      name: 'Nehal',),
  Expert(
      ExpertImage: 'images/expert7.png',
      name: 'John',),
  Expert(
      ExpertImage: 'images/expert8.png',
      name: 'Mark',)
];*/

List<Expert> experts=[
  Expert(
      expertImage: 'images/expert1.png',
      name: 'Menna Sayed',
      title: 'botanist',
      bio: "Caroline mixes a passion for both education and plants into her day to dayShe spent six years in higher"
          " education as anAcademic greenhouse and serving as ahorticulturist aide at a conservatoryWe are excited to have her"
          " on our horticureteam primarily supporting clients via ourVirtual Appointments",
      languages: 'English',
      price: 20.00
  ),
  Expert(
      expertImage: 'images/expert2.png',
      name: 'Mayan Mohamed',
      title: 'botanist',
      bio: "Caroline mixes a passion for both education and plants into her day to dayShe spent six years in higher"
          " education as anAcademic greenhouse and serving as ahorticulturist aide at a conservatoryWe are excited to have her"
          " on our horticureteam primarily supporting clients via ourVirtual Appointments",
      languages: 'English',
      price: 20.00
  ),
  Expert(
      expertImage: 'images/expert3.png',
      name: 'Maryam emad',
      title: 'botanist',
      bio: "Caroline mixes a passion for both education and plants into her day to dayShe spent six years in higher"
          " education as anAcademic greenhouse and serving as ahorticulturist aide at a conservatoryWe are excited to have her"
          " on our horticureteam primarily supporting clients via ourVirtual Appointments",
      languages: 'English',
      price: 20.00
  ),
  Expert(
      expertImage: 'images/expert4.png',
      name: 'Mayar El awady',
      title: 'botanist',
      bio: "Caroline mixes a passion for both education and plants into her day to dayShe spent six years in higher"
          " education as anAcademic greenhouse and serving as ahorticulturist aide at a conservatoryWe are excited to have her"
          " on our horticureteam primarily supporting clients via ourVirtual Appointments",
      languages: 'English',
      price: 20.00
  ),
  Expert(
      expertImage: 'images/expert5.png',
      name: 'Asmaa',
      title: 'botanist',
      bio: "Caroline mixes a passion for both education and plants into her day to dayShe spent six years in higher"
          " education as anAcademic greenhouse and serving as ahorticulturist aide at a conservatoryWe are excited to have her"
          " on our horticureteam primarily supporting clients via ourVirtual Appointments",
      languages: 'English',
      price: 20.00
  ),
  Expert(
      expertImage: 'images/expert6.png',
      name: 'Nehal',
      title: 'botanist',
      bio: "Caroline mixes a passion for both education and plants into her day to dayShe spent six years in higher"
          " education as anAcademic greenhouse and serving as ahorticulturist aide at a conservatoryWe are excited to have her"
          " on our horticureteam primarily supporting clients via ourVirtual Appointments",
      languages: 'English',
      price: 20.00
  ),
  Expert(
      expertImage: 'images/expert7.png',
      name: 'John',
      title: 'botanist',
      bio: "Caroline mixes a passion for both education and plants into her day to dayShe spent six years in higher"
          " education as anAcademic greenhouse and serving as ahorticulturist aide at a conservatoryWe are excited to have her"
          " on our horticureteam primarily supporting clients via ourVirtual Appointments",
      languages: 'English',
      price: 20.00
  ),
  Expert(
    expertImage: 'images/expert8.png',
    name: 'Mark',
    title: 'botanist',
    bio: "Caroline mixes a passion for both education and plants into her day to dayShe spent six years in higher"
        " education as anAcademic greenhouse and serving as ahorticulturist aide at a conservatoryWe are excited to have her"
        " on our horticureteam primarily supporting clients via ourVirtual Appointments",
    languages: 'English',
    price: 20.00,

  ),



];