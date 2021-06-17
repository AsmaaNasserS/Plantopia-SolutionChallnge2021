// class PlantModel{
//
//   List<String> commonNames;
//   Map<String,String> wikiDescription;
//   List<String> edibleParts;
//   List propagationMethods;
//   String scientificName;
//   List<String> synonymsNames;
//   Map<String,String> taxonomy;
//   String plantUrl;
//   int plantCertainty;
//
//   PlantModel({
//     this.commonNames,
//     this.wikiDescription,
//     this.edibleParts,
//     this.propagationMethods,
//     this.scientificName,
//     this.synonymsNames,
//     this.taxonomy,
//     this.plantUrl,
//     this.plantCertainty
// });
//
//
//  PlantModel.fromJson(Map<String, dynamic>json)
//  {
//    //commonNames = json['suggestions']['plant_details']['common_names'];
//    //wikiDescription = json['suggestions']['plant_details']['wiki_description'];
//   // edibleParts = json['suggestions']['plant_details']['edible_parts'];
//   // propagationMethods = json['suggestions']['plant_details']['propagation_methods'];
//    //scientificName = json['suggestions']['plant_details']['scientific_name'];
//    //synonymsNames = json['suggestions']['plant_details']['synonyms'];
//    //taxonomy = json['suggestions']['plant_details']['taxonomy'];
//   // plantUrl = json['suggestions']['plant_details']['url'];
//    plantCertainty = json['id'];
//  }
// }

class WikiDescription{
  final String value;

  WikiDescription({this.value});
  factory WikiDescription.fromJson(Map<String, dynamic> jsonData){
    return WikiDescription(
        value: jsonData['value']??''
    );
    
  }
  
}
class PlantImages {
  final String imageUrl;
  final String fileName;

  PlantImages({this.imageUrl, this.fileName});

  factory PlantImages.fromJson(Map<String, dynamic> jsonData) {
    return PlantImages(
        fileName: jsonData['file_name']??'', imageUrl: jsonData['url']??'');
  }
}

class Plants {
  final List<dynamic> plantImages;
  final List<dynamic> plantSuggestion;

  Plants({
    this.plantImages,
    this.plantSuggestion,
  });

  factory Plants.fromJson(Map<String, dynamic> jsonData) {
    return Plants(
      plantImages: jsonData['images']??'',
      plantSuggestion: jsonData['suggestions']??'',
    );
  }
}

class PlantTaxonomy{
  final String plantFamily;
  final String kingdom;
  final String phylum;
  final String plantClass;
  final String order;
  final String genus;

  PlantTaxonomy({this.kingdom, this.phylum, this.plantClass, this.order, this.genus, this.plantFamily});
  factory PlantTaxonomy.fromJson(Map <String,dynamic> jsonData)
  {
    return PlantTaxonomy(
    plantFamily: jsonData['family']??'',
        kingdom:jsonData['kingdom']??'' ,
      genus: jsonData['genus']??'',
      order: jsonData['order']??'',
      phylum: jsonData['phylum']??'',
      plantClass:jsonData['class']??'' ,
    );
  }
}

class PlantDetails {
  final String scientificName;
  final List<String> commonNames;
  final String url;
  final PlantTaxonomy plantTaxonomy;
  final List<String> methods;
  final WikiDescription description;

  PlantDetails({
    this.scientificName,
    this.commonNames,
    this.url,
    this.plantTaxonomy,
    this.methods,
    this.description
  });
  factory PlantDetails.fromJson(Map<String, dynamic> jsonData) {

        var namesFromJson = jsonData['common_names'];
        List<String> namesList;
        if (namesFromJson!=null){
          namesList=namesFromJson.cast<String>() ;
        }
        else
          {
           namesList=['No common Names'];
          }


    return PlantDetails(
        scientificName: jsonData['scientific_name']??'',
        commonNames: namesList??'',
        plantTaxonomy: PlantTaxonomy.fromJson(jsonData['taxonomy'])??'',
        description: WikiDescription.fromJson(jsonData['wiki_description'])??'',
        url: jsonData['url']??''
    );
  }
}
///////////////////////////

class PlantSuggestions {
  final String plantName;
  final double probability;
  final PlantDetails plantDetails;
  final List<SimilarImages> similarImages;

  PlantSuggestions({
    this.plantName,
    this.probability,
    this.plantDetails,
    this.similarImages
  });

  factory PlantSuggestions.fromJson(Map<String, dynamic> jsonData) {
    var list = jsonData['similar_images'] as List;
    List<SimilarImages> similarImages = list.map((i) => SimilarImages.fromJson(i)).toList();

    return PlantSuggestions(
        plantName:  jsonData['plant_name']??'',
        probability: jsonData['probability'],
        plantDetails: PlantDetails.fromJson(jsonData['plant_details']),
        similarImages: similarImages,
    );
  }
}

class SimilarImages {

  final  String id;
  final String similarImagesUrl;

  SimilarImages({this.id, this.similarImagesUrl});

  factory SimilarImages.fromJson(Map<String, dynamic> jsonData) {
    return SimilarImages(
        id: jsonData['id'].toString()??'',
        similarImagesUrl: jsonData['url']??''
    );
  }
}


