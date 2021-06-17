import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gp_app/identification_part/model/plantmodel.dart';
import 'package:gp_app/identification_part/networking/cubit_states.dart';
import 'package:image_picker/image_picker.dart';
import 'dio_helper.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class IdentificationCubit extends Cubit<IdentificationStates> {
  IdentificationCubit() : super(IdentificationInitialState());

  static IdentificationCubit get(context) => BlocProvider.of(context);

  final picker = ImagePicker();
  File _image;
  String filePath;
  List<String> wikiUrl=[];
  List<String> scientificName =[];
  List<String> plantName=[];
  List<String> familyName=[];
  List<String> kingdomName=[];
  List<String> phylumName=[];
  List<String> className=[];
  List<String> orderName=[];
  List<String> genusName=[];

  List<List> commonName=[];
  List<String> similarImages=[];
  List<String> description =[];

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    _image = File(pickedFile.path);
    emit(GetImageState());
    sendImage();
  }

  Future sendImage() async {
    var images = <String>[];
    var base64Image = base64Encode(_image.readAsBytesSync());
    images.add(base64Image);
    var body = {
      'api_key': 'KQ7KGhRJpnV0jiiy3qI3K023GYh6OjKMloU9hqbOUtpJ012Pyy',
      'images': images,
      "modifiers": ["similar_images"],
      "plant_details": ["common_names", "url", "synonyms","wiki_description", "taxonomy"]
    };
    http.post( Uri.parse('https://api.plant.id/v2/identify'),
      body: jsonEncode(body),
    ).then((value) {
      if (value.statusCode == 200) {
        String data = value.body;
        var jsonData = jsonDecode(data);
        Plants plants = Plants.fromJson(jsonData);
        List<PlantSuggestions> plantSuggestionsList = plants.plantSuggestion
            .map((e) => PlantSuggestions.fromJson(e)).toList();
        List<PlantImages> images = plants.plantImages
            .map((e) => PlantImages.fromJson(e)).toList();

        for (var plant in plantSuggestionsList) {
           plantName.add(plant.plantName);
           familyName.add(plant.plantDetails.plantTaxonomy.plantFamily);
           kingdomName.add(plant.plantDetails.plantTaxonomy.kingdom);
           phylumName.add(plant.plantDetails.plantTaxonomy.phylum);
           className.add(plant.plantDetails.plantTaxonomy.plantClass);
           orderName.add(plant.plantDetails.plantTaxonomy.order);
           genusName.add(plant.plantDetails.plantTaxonomy.genus);
           commonName.add(plant.plantDetails.commonNames);
           scientificName.add(plant.plantDetails.scientificName);
           similarImages.add(plant.similarImages.elementAt(0).similarImagesUrl);
           description.add(plant.plantDetails.description.value);
           wikiUrl.add(plant.plantDetails.url);
          print(plant.plantName);
           //print(commonName.elementAt(0));
        }
      //  print( plantName.length);
       // print(commonName.length);
       // print(familyName.length);
    for (var image in images)
          {
           filePath = image.imageUrl;
          }

          print(value.statusCode);
      } else {
        print('Statuss Codeee issss ${value.statusCode}');
      }
      emit(PostImageState());
    }).catchError((error) {
      print(error.toString());
      emit(PostImageErrorState());
    });
  }

















  // void getData()

  // {
  //   DioHelper.getData(url: 'v2/identify&').
  //   then((value) {
  //
  //     print(value.statusCode);
  //     emit(GetImageState());
  //   }).catchError((error){print(error.toString());
  //   emit(IdentificationErrorState());});
  // }

//10.0.2.2
  //192.168.42
  //192.168.42.85:8080
  // Future<Map> gedtData()  async {
  //   print('im here');
  //     http.get(
  //       Uri.parse('http://192.168.0.105:8080/plant/user')).
  //     then((value) {
  //       //print((json.decode(response.body)));
  //       print('im not here y3nee ana l ip eshtgh w khalas fadel takka takaka ');
  //       print(value.body.toString());
  //       print(value.body);
  //       print(value.statusCode);
  //     }).catchError((error){
  //       print(error.toString());
  //     });
  // }
  // Future sendImage() async {
  //   var images = <String>[];
  //   var base64Image = base64Encode(_image.readAsBytesSync());
  //   images.add(base64Image);
  //   var body = {
  //     //'api_key': 'SvoT31x9htINaM4C6OE9F0DK6N2ltRe6QCB8sAa9zJKwKnnjVP',
  //     'images': images
  //   };
  //   DioHelper.postData(
  //     path: 'v2/identify/',
  //     data:  body,
  //   ).then((value) {
  //     print('hereeeeeeee');
  //     print(value.data.toString());
  //     print(value.statusCode);
  //     emit(PostImageState());
  //   }).catchError((error)
  //   {
  //     print(error.toString());
  //     emit(PostImageErrorState());
  //   });
  //
  // }

}
