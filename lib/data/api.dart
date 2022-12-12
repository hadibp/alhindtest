import 'dart:convert';

import 'package:alhind/data/responsemodel.dart';
import 'package:http/http.dart' as http;

var x = jsonEncode(<String, String>{
  "Origin": "BLR",
  "Destination": "DEL",
  // "Origin": text1,
  // "Destination": text2,
  "OnwardDate": "2022-12-20",
  "ReturnDate": "2022-12-20",
  "Adult": "1",
  "Child": "1",
  "Infant": "1",
  "TripMode": "O",
  "TravelType": "D",
  "AirlineClass": "",
  "UserId": "INCCJ029022800",
  "Password": "123456",
  "Error": "",
  "IncludeAirline": "",
  "ExcludeAirline": "",
  "Status": "",
  "DestinationNation": "IN",
  "OriginNation": "IN",
  "Classes": "Economy"
});

Future<ResponseModel> sendata() async {
  // print("first = $x");
  final response = await http.post(
    Uri.parse('http://202.83.54.148/Api/webapi/GetAvailability?type=json'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: x,
  );

  if (response.statusCode == 200) {
    return ResponseModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}
