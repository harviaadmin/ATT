// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';

// Declare audioPlayer globally so it can be used in both custom actions
final AudioPlayer audioPlayer =
    AudioPlayer(); // Declare the audio player globally

// Static class for managing audio state
class AudioState {
  static bool isStopped = false; // Static variable to manage audio state
}

Future<void> stopAudio() async {
  // Immediately stop the audio playback
  await audioPlayer.stop(); // Stop the audio playback
  AudioState.isStopped = true; // Set the stop flag to true
}
