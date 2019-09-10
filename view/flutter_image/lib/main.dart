import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: ImagePage(title: 'ImagePage'),
      home: ImageFitPage(),
//      home: ImageIconPage(),
    );
  }
}

class ImagePage extends StatefulWidget {
  ImagePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(
                image: AssetImage("images/avatar.png"),
                width: 100,
              ),
              Image.asset(
                "images/avatar.png",
                width: 100,
              ),
              Image(
                image: NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                width: 100,
              ),
              Image.network("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4", width: 100),
              Image(
                image: AssetImage("images/avatar.png"),
                color: Colors.blue,
                colorBlendMode: BlendMode.difference,
              ),
            ],
          ),
        ));
  }
}

class ImageFitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Fit"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                color: Colors.lightGreenAccent,
                child: Image(
                  image: AssetImage("images/avatar.png"),
                  width: 100,
                  fit: BoxFit.none,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.black12),
                child: Image(
                  image: AssetImage("images/avatar.png"),
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.black12),
                child: Image(
                  image: AssetImage("images/avatar.png"),
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.black12),
                child: Image(
                  image: AssetImage("images/avatar.png"),
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.black12),
                child: Image(
                  image: AssetImage("images/avatar.png"),
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.black12),
                child: Image(
                  image: AssetImage("images/avatar.png"),
                  width: 100,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ));
  }
}

class ImageRepeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Fit"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(
                image: AssetImage("images/avatar.png"),
                width: 100,
                height: 200,
                repeat: ImageRepeat.repeatY,
              ),
            ],
          ),
        ));
  }
}

class ImageIconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    // accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
    // error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
    // fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return Scaffold(
        appBar: AppBar(
          title: Text("Image Fit"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                icons,
                style: TextStyle(fontFamily: "MaterialIcons", fontSize: 24.0, color: Colors.green),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.accessible,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: Colors.green,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
