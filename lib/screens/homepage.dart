import 'package:flutter/material.dart';
import '../data/data.dart';
import './aboutpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(data[2]);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding:  EdgeInsets.all(0),
                child: Container(
                  color: Colors.tealAccent,
                  child: Center(
                    child: Text("MS Word Guide",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),


            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return AboutPage();
                  }
                ),);
              },
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              onTap: (){
              launch("https://youtube.com");
              },
              leading: Icon(Icons.star),
              title: Text("Rate"),
            ),
            ListTile(
              onTap: (){
           Share.share("Hi download this app from");
              },
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),

          ],
        ),
      ),
      appBar: AppBar(
        title: Text("MS Word Shortcuts"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            iconSize: 26.0,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return AboutPage();
                }),
              );
            },
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context,index){
          return Divider(
            thickness: 2.0,
          );
        },
        itemCount: data.length,
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              radius: 22.0,
              backgroundColor: Colors.tealAccent,
              child: Text(
                "${index + 1}",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            title: Text(data[index]["key"]),
            subtitle: Text(data[index]["use"]),
          );

        },

      ),

    );
  }
}
