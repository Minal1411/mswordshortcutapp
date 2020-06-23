import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About app"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text("This is the app where you find the shortcut keys for Microsoft Word!",
              style: TextStyle(
                fontSize: 17.0,
              ),),
            ),
          ),
          RaisedButton(
            color: Colors.tealAccent,
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Go back",
            style: TextStyle(
              color: Colors.black,
            ),),
          )
        ],
      ),
    );
  }
}
