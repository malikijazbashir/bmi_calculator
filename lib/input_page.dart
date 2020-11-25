import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                  child: new RepeatContainerCode(colors: Color(0xFF1D1E33),
                  cardWidget: RepeatCardWidget(),
                  )
              ),
              Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),)),
            ],
          )),
          Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),)),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),)),
              Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),)),
            ],
          )),
        ],

      ),
    );
  }
}

class RepeatCardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.male,
          size:80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Male',
          style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98)),
        ),
      ],
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors,this.cardWidget});
final Color colors;
final cardWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardWidget,
      decoration: BoxDecoration(
        color:colors,
        borderRadius: BorderRadius.circular(10.0)
      ),
              );
  }
}