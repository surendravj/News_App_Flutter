import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news/main.dart';

class NoInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void refreshPage() {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return MyApp();
      }));
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                        child: Icon(
                      Icons.signal_wifi_off,
                      color: Colors.black,
                    )),
                    SizedBox(
                      height: 12,
                    ),
                    Text('No Internet Connection'),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            SystemNavigator.pop();
                          },
                          color: Colors.white,
                          child: Text(
                            'Close',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RaisedButton(
                          onPressed: refreshPage,
                          color: Colors.white,
                          child: Text(
                            'Refresh',
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

