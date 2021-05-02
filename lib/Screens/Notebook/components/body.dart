import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_audio_recorder/flutter_audio_recorder.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:refineapp/Screens/Notebook/core/validators.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _notebookFormKey = GlobalKey<FormState>();

  final TextEditingController _wordController = TextEditingController();
  final TextEditingController _definitionController = TextEditingController();

  @override
  void initState() {
    super.initState();

    FlutterAudioRecorder.hasPermissions.then((hasPermision) {
      setHasPermission(hasPermision);
      if (!hasPermision) {
        showNoPermissionSnackbar();
      }
    });
  }

  @override
  void dispose() {
    _audioRecorder = null;
    super.dispose();
  }

  bool _autoValidate = false;
  void setAutoValidate(bool newValue) {
    setState(() {
      _autoValidate = newValue;
    });
  }

  // ignore: unused_field
  bool _hasPermission = false;
  void setHasPermission(bool newValue) {
    setState(() {
      _hasPermission = newValue;
    });
  }

  bool _isRecording = false;
  void setIsRecording(bool newValue) {
    setState(() {
      _isRecording = newValue;
    });
  }

  bool _isPlaying = false;
  void setIsPlaying(bool newValue) {
    setState(() {
      _isPlaying = newValue;
    });
  }

  Recording _noteAudioFileRecording;
  void setNoteAudioFileRecording(Recording newValue) {
    setState(() {
      _noteAudioFileRecording = newValue;
    });
  }

  Future<void> _saveNote() async {
    if (_notebookFormKey.currentState.validate()) {
      return;
    }

    setAutoValidate(true);
  }

  _initRecorder() async {
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String filePath = appDirectory.path +
        '/' +
        DateTime.now().millisecondsSinceEpoch.toString() +
        '.aac';

    _audioRecorder = FlutterAudioRecorder(
      filePath,
      audioFormat: AudioFormat.AAC,
    );
    await _audioRecorder.initialized;
  }

  Future _startRecordAudio() async {
    if (await FlutterAudioRecorder.hasPermissions) {
      await _initRecorder();

      await _audioRecorder.start();
      // await audioRecorder.current(channel: 0);;

      setIsRecording(true);
    } else {
      showNoPermissionSnackbar();
    }
  }

  Future _stopRecordAudio() async {
    final Recording _recording = await _audioRecorder.stop();
    setIsRecording(false);

    setNoteAudioFileRecording(
      _recording,
    );

    print("Finished recording: ${_recording.path}");
  }

  Future _playPronounciation() async {
    setIsPlaying(true);
    _audioPlayer.setReleaseMode(ReleaseMode.STOP);
    await _audioPlayer.play(
      _noteAudioFileRecording.path,
      isLocal: true,
    );
  }

  Future _stopPronounciation() async {
    await _audioPlayer.stop();
    setIsPlaying(false);
  }

  void showNoPermissionSnackbar() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Please allow recording from settings and restart the app.',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(children: <Widget>[
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Add a new word!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                //textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
