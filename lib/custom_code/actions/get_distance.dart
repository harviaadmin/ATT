// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geolocator/geolocator.dart';

Future<double?> getDistance(
  LatLng startplace,
  LatLng endplace,
) async {
  // Add your function code here!
  double distanceInMeters = await Geolocator.distanceBetween(
    startplace.latitude,
    startplace.longitude,
    endplace.latitude,
    endplace.longitude,
  );
  return distanceInMeters;
}
