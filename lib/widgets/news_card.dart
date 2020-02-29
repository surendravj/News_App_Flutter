import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news/screens/news_details_screen.dart';

class NewsCard extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  NewsCard(this.id, this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(NewsDetails.routeName,arguments:id);
      },
      splashColor: Theme.of(context).accentColor,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 8,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15)),
                child: CachedNetworkImage(
                  imageUrl: imageUrl != null
                      ? imageUrl
                      : 'https://images.app.goo.gl/4xqJGhK4Hzhi5w5q8',
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                  height: 240,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  title,
                  style: TextStyle(color: Theme.of(context).accentColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
    );
  }
}
