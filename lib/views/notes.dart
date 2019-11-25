import 'package:flutter/material.dart';

enum NoteMode{
  Editing,
  Adding,
}

class Note  extends StatelessWidget {

  final NoteMode _noteMode;

  Note(this._noteMode);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            _noteMode == NoteMode.Adding? 'Add Note': 'Edit note'

        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Title '
              ) ,
            ),
            SizedBox(height: 50.0),
            TextField(
            decoration: InputDecoration(
            hintText: 'Note ',
            ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              _noteMode == NoteMode.Adding?
                _NoteButton('Save', Colors.green, (){
                  Navigator.pop(context);
                } ): Container(),
                _noteMode == NoteMode.Editing?
                _NoteButton('Update', Colors.blue, (){
                  Navigator.pop(context);
                } ): Container(),
                _NoteButton('Discard', Colors.blueGrey, (){
                  Navigator.pop(context);
                } ),
                _noteMode == NoteMode.Editing?
                  _NoteButton('Delete', Colors.red, (){
                   Navigator.pop(context);
                  } ): Container(),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
class _NoteButton extends StatelessWidget {

  final String _text;
  final Color _color;
  final Function _onPressed;

  _NoteButton(this._text, this._color, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      onPressed: _onPressed,
      child: Text(
        _text ,
        style: TextStyle(
          color: Colors.white,
        ),

      ),
      color: _color,
      //minWidth: 20.0,
      height: 35.0,
    );
  }
}
