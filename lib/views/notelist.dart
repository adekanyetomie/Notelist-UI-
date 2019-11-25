import 'package:flutter/material.dart';

import 'notes.dart';

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            return GestureDetector(
              onTap:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Note(NoteMode.Editing)
                    ));
              } ,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13.0, 30.0, 20.0, 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _NoteTitle(),
                      SizedBox(height: 6.0),
                      _NoteText(),

                    ],
                  ),
                ),
              ),
            );
          },

      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Note(NoteMode.Adding)
                ));
          },
          child: Icon(Icons.add),
      ),
    );
  }
}
class _NoteTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'My day',
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
class _NoteText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Text(
      '''Existing models and theories guiding the stirred batch reactor are present in this report and serve as a kind of comparison to the results gotten.The apparatus used was described with the aid of a diagram, which was an Armfield Stirred Batch Reactor, the major components of this apparatus were also listed here. The way the apparatus works was also described in this article. The experimental method was also described exactly as the experiment was carried out and the operating conditions were also listed.
                    ''',
      style: TextStyle(
        color: Colors.grey.shade900,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
