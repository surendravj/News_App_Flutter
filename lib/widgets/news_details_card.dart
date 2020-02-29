import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class NewsCardDetails extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String author;
  NewsCardDetails(this.title, this.description, this.imageUrl, this.author);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder( 
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            child: Image.network(
              imageUrl != null
                  ? imageUrl
                  : 'https://images.app.goo.gl/4xqJGhK4Hzhi5w5q8',
              height: 240,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textContainer(title, 25, Colors.black54),
        ),
        SizedBox(
          height: 5,
        ),
        Divider(),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: textContainer(description, 20, Colors.black)),
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person_pin,
                size: 45,
                color: Colors.blueAccent,
              ),
              if (author != null) Text('By $author',
                      style: TextStyle(
                        fontSize: 22,
                        textBaseline: TextBaseline.alphabetic,
                      )) else Text('By Unknown'),
            ],
          ),
        ),
      ],
    );
  }

  Container textContainer(String content, double size, Color textColor) {
    return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5),
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: content != null
            ?  Text(
                  content,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size, color: textColor),
                )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Unable To Fetch Data..',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: size, color: textColor),
                  ),
                  SizedBox(width: 10),
                  SpinKitHourGlass(
                    color: Colors.blueAccent,
                    duration: Duration(seconds:2),
                  )
                ],
              ));
  }
}
