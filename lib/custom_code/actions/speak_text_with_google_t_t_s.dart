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

final AudioPlayer audioPlayer = AudioPlayer(); // Global audio player instance

// Mapping language codes to their respective Wavenet female voices
Map<String, String> languageVoiceMap = {
  'en-US': 'en-US-Wavenet-F', // US English Female voice
  'de-DE': 'de-DE-Wavenet-C', // German Female voice
  'it-IT': 'it-IT-Wavenet-A', // Italian Female voice
  'fr-FR': 'fr-FR-Wavenet-A', // French Female voice
  'ru-RU': 'ru-RU-Wavenet-A', // Russian Female voice
};

Future<void> speakTextWithGoogleTTS(String text, String languageCode) async {
  // Prepare the API endpoint and request headers
  final String url =
      'https://texttospeech.googleapis.com/v1/text:synthesize?key=AIzaSyDu_3o4L8Pvf7cDodAwJ2G2RumNgOh07-g';

  // Get the corresponding Wavenet voice for the language code
  String voiceName = languageVoiceMap[languageCode] ??
      'en-US-Wavenet-F'; // Default to US English if not found

  // Split text into chunks by new lines for better chunking
  List<String> chunks = text.split('\n'); // Split by new lines

  // List to hold all audio bytes
  List<Uint8List> allAudioBytes = [];

  for (String chunk in chunks) {
    // Check if the stop flag is set during audio synthesis
    if (FFAppState().isStopped) {
      await audioPlayer.stop(); // Ensure the audio player is stopped
      return; // Exit the function early
    }

    String trimmedChunk = chunk.trim(); // Remove leading/trailing spaces

    if (trimmedChunk.isNotEmpty) {
      // Construct the API request body
      final Map<String, dynamic> requestBody = {
        'input': {
          'text': trimmedChunk,
        },
        'voice': {
          'languageCode': languageCode,
          'name': voiceName,
        },
        'audioConfig': {
          'audioEncoding': 'MP3',
          'pitch': 0.8,
          'speakingRate': 0.9,
        },
      };

      // Send the request to the Google Cloud TTS API
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(requestBody),
      );

      if (response.statusCode == 200) {
        // Parse the response and get the audio content (base64 encoded)
        final Map<String, dynamic> responseData = json.decode(response.body);
        final String audioContent = responseData['audioContent'];

        // Decode base64 to bytes
        Uint8List audioBytes = base64.decode(audioContent);
        allAudioBytes.add(audioBytes); // Store the audio bytes for this chunk
      } else {
        print('Failed to synthesize speech: ${response.statusCode}');
        print('Error: ${response.body}');
      }
    }
  }

  // Now play all audio chunks sequentially
  for (Uint8List audioBytes in allAudioBytes) {
    // Check again if the stop flag is set during audio playback
    if (FFAppState().isStopped) {
      await audioPlayer
          .stop(); // Stop audio directly without calling external stopAudio
      return; // Exit the function early
    } else {
      await playAudio(audioBytes); // Play the audio chunk
      FFAppState().isStopped = true;
    }
  }
}

Future<void> playAudio(Uint8List audioBytes) async {
  // Check if audio is stopped before playing
  if (FFAppState().isStopped) {
    await audioPlayer
        .stop(); // Stop audio directly without calling external stopAudio
    return; // Exit the function early
  }

  // Stop any currently playing audio before starting new playback
  await audioPlayer.stop(); // Ensure audio is stopped
  await audioPlayer.play(BytesSource(audioBytes)); // Play audio from bytes
}
