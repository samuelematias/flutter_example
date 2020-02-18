import 'package:example/src/ui/widgets/button/primary_button.dart';
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final String nome = 'samuel';
  // nome = 'raissa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.green,
      // drawer: ,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Container(
            // padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(16.0),
                      color: Colors.red,
                      width: 50.0,
                      height: 50.0,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Raissa'),
                      ),
                    ),
                  ],
                ),
                // ListView(
                //   physics: NeverScrollableScrollPhysics(),
                //   children: <Widget>[
                //     ListTile(
                //       leading: Icon(Icons.map),
                //       title: Text('Mapa'),
                //     ),
                //     ListTile(
                //       leading: Icon(Icons.photo_album),
                //       title: Text('Álbum'),
                //     ),
                //     ListTile(
                //       leading: Icon(Icons.phone),
                //       title: Text('Fone'),
                //     ),
                //   ],
                // ),
                _texts('You have pushed the button this many times'),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
                PrimaryButton(
                  label: "Raissa",
                  onPress: () {},
                  width: 100,
                  borderColor: Colors.red,
                  // height: ,
                ),
                PrimaryButton(
                  label: "Heitor",
                  onPress: () {},
                  width: 100,
                  labelColor: Colors.green,
                  borderColor: Colors.red,
                  // height: ,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _texts(String name) {
    return Column(
      children: <Widget>[
        Text(
          name,
        ),
        Text(
          name,
        ),
      ],
    );
  }
}
