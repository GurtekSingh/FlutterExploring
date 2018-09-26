import 'package:exploring_new_things/drag_drop.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
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
        title: new Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[

            UserAccountsDrawerHeader(
              accountName: Text("Account Name"),
              accountEmail: Text("+91987654321"),

              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white70,
              ),
            ),

            ListTile(
              title: Text("Label 1"),
              leading: Icon(Icons.add),
              onTap: (){},
            ),


            ListTile(
              title: Text("Label 2"),
              leading: Icon(Icons.add),
              onTap: (){},
            ),


            ListTile(

              title: Text("Label 3"),
              leading: Icon(Icons.add),
              onTap: (){},
            ),

            Divider(
              color: Colors.grey,

            ),

            ListTile(
              title: Text("Label 4"),
              leading: Icon(Icons.add),
              onTap: (){},
            ),


            ListTile(
              title: Text("Label 5"),
              leading: Icon(Icons.add),
              onTap: (){},
            )

          ],
        ),
      ),
      body: BottomSheetDemo(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
