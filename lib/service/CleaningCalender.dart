class CleaningCalender{
  int wateredOrRepeat;
  String userID;
  List<int>days;
  List<int>time;
  String plantID;


  CleaningCalender(
  { this.wateredOrRepeat, this.userID, this.days, this.time, this.plantID});

  void addDays(int day){
    days.add(day);
  }


  List<int> retrieveDays(){
    return days ;
  }

  void deleteDays(int day){
    days.remove(day);
  }


  void addTime(int newTime){
    time.add(newTime);
  }


  List<int> retrieveTime(){
    return time ;
  }

  void deleteTime(int newTime){
    time.remove(newTime);
  }

}