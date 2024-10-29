// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

Future openGoogleDirections(
  LatLng? startGps,
  LatLng? endGps,
) async {
  // Add your function code here!
  // Extract latitude and longitude from the parameters
  // Check if either GPS parameter is null
  if (startGps == null || endGps == null) {
    throw 'Start or end GPS coordinates cannot be null.';
  }

  // Extract latitude and longitude from the parameters
  double startLat = startGps.latitude;
  double startLng = startGps.longitude;
  double endLat = endGps.latitude;
  double endLng = endGps.longitude;

  // Construct the Google Directions URL
  String url =
      'https://www.google.com/maps/dir/?api=1&origin=$startLat,$startLng&destination=$endLat,$endLng';

  // Launch the URL
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
