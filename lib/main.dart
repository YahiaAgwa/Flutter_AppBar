import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("HomePage"),
        backgroundColor: Colors.purple,
        centerTitle: true,
        leading: Icon(Icons.menu),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.pink),
            child: new Container(
              height: 48.0,
              alignment: Alignment.center,
              child: new Text("yahia agwa",style: TextStyle(color:Colors.white),),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search),onPressed: (){},),
          IconButton(icon:Icon(Icons.settings),onPressed: (){},),
          PopupMenuButton(onSelected: (i){
            debugPrint(i);
          },
          itemBuilder: (BuildContext content){
            return ['help','contact us'].map((item){
              return PopupMenuItem(
                value: item,
                child: Row(
                  children: <Widget>[
                    Icon((item=='help')?Icons.help:Icons.mail),
                    Text(" "+item)
                  ],
                ),
              );
            }).toList();
          },
          )
        ],
      ),
      body: new Center(
        child: new Text("Hello")
      )
      );
  }
}
