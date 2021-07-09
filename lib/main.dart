import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Challenge",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white)),
          ),
          body: Center(
            child: Stack(children: <Widget>[
              Image(
                image: AssetImage('assets/torre-eiffel.jpg'),
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              Center(
                  child: Container(
                      height: 50.0,
                      color: Colors.black45,
                      child: Center(
                        child: Text(
                          "Bienvenido a París",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )))
            ]),
          ),
        ));
  }
}
