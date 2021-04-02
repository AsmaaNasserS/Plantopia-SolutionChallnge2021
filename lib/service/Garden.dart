
import 'Plants.dart';

class Garden {

String userID;
String gardenID;
List<Plants> plantsID;

void addUser(Plants plants){
  plantsID.add(plants);
}


Garden({this.userID, this.gardenID, this.plantsID});

  List<Plants> retrieveUsers(Plants plants){
  return plantsID ;
}

void deleteUser(Plants plants){
  plantsID.remove(plants);
}






}