
class Meeting {
 List<String> _day;
 List<String> _time;
 List<String> _link;
 List<String> _expertID;
 List<String> _meetingID;


 Meeting(this._day, this._time, this._link, this._expertID, this._meetingID);

  void addMeeting (String day,String time,String link ,String expertID ){
    _day.add(day);
    _time.add(time);
    _link.add(link);
    _expertID.add(expertID);
  }
   void removeMeeting (String day,String time,String link ,String expertID ){

    //نعرف الاندكس اللي هنمسح من عنده todo
    _day.remove(day);
    _time.remove(time);
    _link.remove(link);
    _expertID.remove(expertID);
  }

 List<String> retrieveMeeting(String day,String time,String link ,String expertID) {
//نعرف الاندكس اللي هنمسح من عنده todo
    return _link ;
 }
}