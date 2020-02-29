import 'package:flutter/material.dart';
import 'package:news/providers/newsList_model.dart';
import 'package:news/providers/news_model.dart';
import 'package:news/widgets/news_card.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CommonScreen extends StatefulWidget {
  final url;
  CommonScreen(this.url);
  @override
  _CommonScreenState createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  bool _isLoading = true;
  List<News> newsData;

  @override
  dispose() {
    super.dispose();
  }

  Future<void> getLoadedData() async {
    newsData = await Provider.of<NewsList>(context, listen: false)
        .loadItems(widget.url);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getLoadedData();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? SpinKitCubeGrid(color: Colors.blue, size: 70.0)
        : ListView.builder(
            itemBuilder: (ctx, i) {
              return NewsCard(
                  newsData[i].id, newsData[i].title, newsData[i].imageUrl);
            },
            itemCount: newsData.length,
          );
  }
}
