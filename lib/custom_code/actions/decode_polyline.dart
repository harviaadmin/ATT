// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<LatLng>> decodePolyline(String? encoded) async {
  // Decode a polyline string into a list of LatLng points
  if (encoded == null) {
    return [];
  }

  List<LatLng> points = [];

  int index = 0;
  int len = encoded.length;
  int lat = 0;
  int lng = 0;

  while (index < len) {
    int shift = 0;
    int result = 0;

    // Decode latitude
    int byte;
    do {
      byte = encoded.codeUnitAt(index++) - 63;
      result |= (byte & 0x1F) << (shift * 5);
      shift++;
    } while (byte >= 0x20);

    lat += (result & 1) != 0 ? ~(result >> 1) : (result >> 1);

    shift = 0;
    result = 0;

    // Decode longitude
    do {
      byte = encoded.codeUnitAt(index++) - 63; // Use the 'byte' variable here
      result |= (byte & 0x1F) << (shift * 5);
      shift++;
    } while (byte >= 0x20);

    lng += (result & 1) != 0 ? ~(result >> 1) : (result >> 1);

    double latDouble = lat / 1e5;
    double lngDouble = lng / 1e5;

    points.add(LatLng(latDouble, lngDouble));
  }

  return points;
}
