import 'package:flutter/material.dart';

void main() => runApp(NavigationApp());

class NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation Demo",
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstScreen"),
      ),
      body: Center(
        child: Text("Click on Fab"),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.arrow_forward_ios),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()),);
      }),
    );
  }
}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Go Back To First Screen"),
            onPressed: (){
              Navigator.pop(context);
            }),
      ),
    );
  }
}