import 'package:flutter/material.dart';
import 'package:note_app/views/notelist.dart';


void main() => runApp(NoteApp());

class NoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Notes',
      home: NoteList(),

    );

  }
}
