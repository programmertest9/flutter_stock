import 'package:flutter/material.dart';
import 'package:flutter_stock_v3/themes/styles.dart';

class MediaQueryScreen extends StatefulWidget {
  MediaQueryScreen({Key? key}) : super(key: key);

  @override
  State<MediaQueryScreen> createState() => _MediaQueryScreenState();
}

class _MediaQueryScreenState extends State<MediaQueryScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double appbarHeight = 56.0;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarHeight),
        child: AppBar(
          title: Text('Media Query'),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Text(
              'Screen : $screenSize',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            color: Colors.orange,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Text('Screen width : ${screenWidth.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 24)),
          ),
          Container(
            color: Colors.purple,
            width: MediaQuery.of(context).size.width,
            height:
                MediaQuery.of(context).size.height * 0.4 - appbarHeight - 24,
            child: Text('Screen height : ${screenHeight.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
