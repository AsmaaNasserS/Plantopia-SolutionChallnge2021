import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gp_app/identification_part/identifcationscreen.dart';
import 'package:gp_app/identification_part/networking/cubit_bloc.dart';
import 'package:gp_app/identification_part/networking/cubit_states.dart';
import 'package:gp_app/identification_part/weview_screen.dart';
import 'package:gp_app/view/profile/Home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../components.dart';
import '../../const.dart';

class PlantResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return BlocConsumer<IdentificationCubit, IdentificationStates>(
      listener: (context, state) => {},
    builder: (context, state)  {
      var cubit = IdentificationCubit. get (context);
        return Scaffold(
          backgroundColor: Colors.grey[50],
          appBar: AppBar(
            leading: IconButton(
                onPressed:(){
                  navigateTo(context, Home());
                } ,
                icon: Icon(Icons.arrow_back)
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: IconButton(
                    onPressed: (){
                      navigateTo(context, IdentificationScreen());
                    },
                  icon: kHeadlineIcon(
                    size: 30,
                    icon: Icons.camera_alt_outlined
                  ),
                ),
              )
            ],
            elevation: 0,
            backgroundColor: kInActiveBackButtonColor,
            title: Text(
              "Plant Result",
              style: TextStyle(
                  fontSize: 20.00,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
              ),
            ),


          ),
          body: PageView.builder(
              physics: BouncingScrollPhysics(),
            controller: controller,
            itemCount: cubit.plantName.length,
            itemBuilder: (context, index) {
              int parentIndex = index;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [

                    // TODO PlantImage
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                          image: NetworkImage(cubit.filePath,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.5,
                          height: 350,
                          decoration: BoxDecoration(
                            color: kInActiveBackButtonColor,
                            border: Border.all(
                              color: kInActivelogInButtonColor,
                              width: 4,
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(cubit.filePath),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SmoothPageIndicator(
                      controller: controller,
                      effect: ScrollingDotsEffect(
                        dotColor: Colors.grey,
                        activeDotColor: kInActivelogInButtonColor,
                        dotHeight: 12,
                        dotWidth: 12,
                        spacing: 5.0,
                      ),
                      count: cubit.plantName.length,
                    ),
                    SizedBox(height: 20),
                    // TODO Names
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: kInActiveBackButtonColor,
                        borderRadius: new BorderRadius.all(Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              kHeadlineIcon(icon: Icons.spa, size: 25 ),
                              SizedBox(width: 10),
                              Text(cubit.plantName.elementAt(parentIndex) ?? 'Not found',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                          SizedBox(height: 10),

                          Row(
                            children: [
                              SizedBox(width: 35),
                              Text('of Family ' ?? 'Not found',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: KTextLightColour,
                                  fontSize: 15,

                                ),),
                              Text(cubit.familyName.elementAt(parentIndex)?? 'Not found',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: kActivelogInButtonColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),),
                            ],
                          ),
                          SizedBox(height: 20),

                          Row(
                            children: [
                              kHeadlineIcon(size: 25,icon: Icons.add_chart),
                              SizedBox(width: 10),
                              Text('Common Names:'?? 'Not found',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: kHeadlineTextColorStyle,),
                            ],
                          ),
                          SizedBox(height: 10),
                          ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Row(
                              children: [
                                SizedBox(width: 35),
                                Text(cubit.commonName.elementAt(0).elementAt(index)?? 'Not found',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: kTextBoldColour

                                  ),
                                ),
                              ],
                            ),
                            separatorBuilder: (context, index) => SizedBox(height:5),
                            itemCount: cubit.commonName.elementAt(0).length,
                            physics: NeverScrollableScrollPhysics(),
                          ),

                          SizedBox(height: 20),
                          Row(children: [
                            kHeadlineIcon(size: 25, color: kActiveOrangeColor,icon:Icons.drive_file_rename_outline),
                            SizedBox(width: 10),
                            Text('Scientific Name: ',
                              style:TextStyle(
                                color: KTextLightColour,
                                fontSize: 15,
                              ) ,),
                            Text(cubit.scientificName.elementAt(parentIndex)?? 'Not found',
                              style:
                              kHeadlineTextColorStyle.copyWith( fontStyle: FontStyle.italic,),),
                          ],),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),

                    // TODO Description
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: kInActiveBackButtonColor,
                        borderRadius: new BorderRadius.all(Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              kHeadlineIcon(icon: Icons.description, size: 25 ),
                              SizedBox(width: 10),
                              Text('Description:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 35),
                              Expanded(
                                child: Text(cubit.description.elementAt(parentIndex)?? 'Not found',
                                  style: TextStyle(
                                      height: 1.5,
                                      color: kTextBoldColour
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: (){
                              navigateTo(context, WebViewScreen(url: cubit.wikiUrl.elementAt(0)?? '')
                              );
                            },
                            child:   Row(
                              children: [
                                SizedBox(width: 20),
                                Text('Want to know more?..',
                                  style: TextStyle(
                                      color: kActiveOrangeColor,
                                      fontSize: 15
                                  ),),
                              ],
                            ),)
                        ],
                      ),
                    ),
                    SizedBox(height: 40),

                    // TODO SimilarImages
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: kInActiveBackButtonColor,
                        borderRadius: new BorderRadius.all(Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            kHeadlineIcon(size: 25,icon: Icons.art_track),
                            SizedBox(width: 10),
                            Text('Similar Images:',
                              style: kHeadlineTextColorStyle,),
                          ],),
                          SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>
                                    Padding(
                                      padding: const EdgeInsets.symmetric( horizontal:10.0),
                                      child: Container(
                                        height: 150,
                                        width: MediaQuery.of(context).size.width/2,
                                        decoration: BoxDecoration(
                                          color: kInActiveBackButtonColor,
                                          border: new Border.all(
                                            color: kActiveOrangeColor,
                                            width: 3,
                                          ),
                                          image: DecorationImage(
                                              image:NetworkImage(cubit.similarImages.elementAt(index)??'images/notfound.png'),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                    ),
                                separatorBuilder:(context, index) =>  SizedBox(width: 5),
                                itemCount: cubit.similarImages.length?? 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),

                    // TODO TAXONOMY
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: kInActiveBackButtonColor,
                        borderRadius: new BorderRadius.all(Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              kHeadlineIcon(size: 25, icon: Icons.assessment),
                              SizedBox(width: 10,),
                              Text('Plant Taxonomy',
                                style: kHeadlineTextColorStyle,)
                            ],
                          ),
                          SizedBox(height: 20),

                          plantTaxonomy(
                            label: 'Family     ',
                            taxonomy: cubit.familyName.elementAt(parentIndex),
                          ),
                          plantTaxonomy(
                            label: 'Kingdom',
                            taxonomy: cubit.kingdomName.elementAt(parentIndex),
                          ),
                          plantTaxonomy(
                            label: 'Genus    ',
                            taxonomy: cubit.genusName.elementAt(parentIndex),
                          ),
                          plantTaxonomy(
                            label: 'Class     ',
                            taxonomy: cubit.className.elementAt(parentIndex),
                          ),

                          plantTaxonomy(
                            label: 'Phylum ',
                            taxonomy: cubit.phylumName.elementAt(parentIndex),
                          ),
                          plantTaxonomy(
                            label: 'Order    ',
                            taxonomy: cubit.orderName.elementAt(parentIndex),
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 20),

                    //TODO BUTTONS
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      child: Row(
                        mainAxisSize:MainAxisSize.min ,
                        children: [
                          kHeadlineIcon(size: 15,color: Colors.white, icon: Icons.add),
                          Text('  Add to your garden',
                            style: TextStyle(
                              color: Colors.white,
                            ),),
                        ],
                      ),
                      height: 45,
                      color: kInActivelogInButtonColor,
                      onPressed: () async {
                      },
                    ),
                    SizedBox(height: 10,),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      child: Row(
                        mainAxisSize:MainAxisSize.min ,
                        children: [
                          kHeadlineIcon(size: 15,color: Colors.white, icon: Icons.share),
                          Text('  Share With your friends',
                            style: TextStyle(
                              color: Colors.white,
                            ),),
                        ],
                      ),
                      height: 45,
                      color: kInActiveOrangeColor,
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PlantResult()));

                      },
                    ),
                    SizedBox(height: 30,),
                    SmoothPageIndicator(
                      controller: controller,
                      effect: ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Colors.deepOrange,
                        dotHeight: 10,
                        expansionFactor: 4,
                        dotWidth: 10,
                        spacing: 5.0,
                      ),
                      count: cubit.plantName.length,
                    ),

                  ],
                ),
              );
            }
          ),

        );
    },
    );
  }
}


