import 'package:flutter_tts/flutter_tts.dart';

enum TtsState { playing, stopped }

class SpeechUtilities {
  FlutterTts flutterTts;

  TtsState ttsState = TtsState.stopped;

  get isPlaying => ttsState == TtsState.playing;

  get isStopped => ttsState == TtsState.stopped;

  SpeechUtilities() {
    initTts();
  }

  initTts() {
    flutterTts = FlutterTts();

    flutterTts.setLanguage("en-US");

    flutterTts.setSpeechRate(0.7);

    flutterTts.setVolume(1.0);

    flutterTts.setPitch(1.0);
  }

  void speak(String text) async {
    if (text != null) {
      if (text.isNotEmpty) {
        var result = await flutterTts.speak(text);
        if (result == 1) ttsState = TtsState.playing;
      }
    }
  }
}
