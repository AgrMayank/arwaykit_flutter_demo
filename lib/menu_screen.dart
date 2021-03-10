import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final String title = 'Open ARWAY SDK';
  final String route = '/unity';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ARwayKit Flutter Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Example scene to show how to link "ARWAY SDK" scenes with '
                'Flutter.',
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 2,
                  wordSpacing: 5,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 96,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(route);
                },
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  primary: Color(0xFF1AB146),
                  minimumSize: Size(192, 64),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
