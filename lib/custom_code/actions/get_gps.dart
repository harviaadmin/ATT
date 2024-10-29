// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<List<String>> getGps(LatLng location) async {
  // Extract latitude and longitude from the LatLng parameter
  String latitude = location.latitude.toString();
  String longitude = location.longitude.toString();

  // Return latitude and longitude as a list of strings
  return [latitude, longitude];
}
