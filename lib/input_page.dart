import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('BMI Calculator App'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33))
              ),
              Expanded(child: new RepeatContainerCode(colors: Colors.blueGrey,)),
            ],
          )),
          Expanded(child: new RepeatContainerCode(colors: Colors.greenAccent,)),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: new RepeatContainerCode(colors: Colors.blueAccent,)),
              Expanded(child: new RepeatContainerCode(colors: Colors.amberAccent,)),
            ],
          )),
        ],

      ),
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors});
final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color:colors,
        borderRadius: BorderRadius.circular(10.0)
      ),
              );
  }
}