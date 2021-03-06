import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location = ''; // location name for the UI
  String time = ''; // the time in the location
  String flag = ''; // url to an asset flag icon
  String url = ''; // location url for the api endpoint
  bool isDayTime = true;  // true or false if daytime or not

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['utc_datetime'];
      String hourOffset = data['utc_offset'].substring(0,3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(hourOffset)));

      // set the time property
      // time = now.toString();
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch (e) {
//      print(e);
      time = 'could not get time';
    }
  }
}
