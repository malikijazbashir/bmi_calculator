import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconsTextFIle.dart';
import 'RepeatContainerFile.dart';

const activeColor=Color(0xFF1D1E33);
const deactiveColor=Color(0xFF111328);
enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectgender;
//
//   Color malecolor=deactiveColor;
//   Color femalecolor=deactiveColor;
//   void UpdateColor(Gender gendertype)
//   {
// if(gendertype==Gender.male)
//   {
//     malecolor=activeColor;
//     femalecolor=deactiveColor;
//   }
// if(gendertype==Gender.female)
//   {
//     malecolor=deactiveColor;
//     femalecolor=activeColor;
//   }
//   }
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

                    child: RepeatContainerCode(
                      onPressed: (){
                        setState(() {
                          selectgender=Gender.male;
                        });
                      },
                      colors: selectgender==Gender.male?activeColor:deactiveColor,
                    cardWidget: RepeatCardWidget(
                      iconData: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                    ),

              ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectgender=Gender.female;
                    });
                  },
                  colors: selectgender==Gender.female?activeColor:deactiveColor,
                  cardWidget: RepeatCardWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'FEMALE',
                  ),),
              )
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



