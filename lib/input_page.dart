import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconsTextFIle.dart';
import 'RepeatContainerFile.dart';
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
                  cardWidget: RepeatCardWidget(
                    iconData: FontAwesomeIcons.male,
                    label: 'MALE',
                  ),
                  )
              ),
              Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),
                cardWidget: RepeatCardWidget(
                  iconData: FontAwesomeIcons.male,
                  label: 'FEMALE',
                ),)),
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



