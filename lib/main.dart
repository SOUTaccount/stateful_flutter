import 'package:flutter/material.dart';
void main() {
  runApp(ScreenWidget());
}
class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('StatefullWidget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget{
  @override
  _SimpleWidgetState createState(){
    return new _SimpleWidgetState();
  }
}
class _SimpleWidgetState extends State<SimpleWidget>{
  int _count=0;
  void _handleButton(){
    setState(() {
      _count++;
    });
  }
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$_count'),
          RaisedButton(
              onPressed: (){_handleButton();},
              child: Text('click me!'),
          )
        ],
      ),
    );
  }
  
}