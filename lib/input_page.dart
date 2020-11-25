import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconsTextFIle.dart';
import 'RepeatContainerFile.dart';
import 'constantfile.dart';
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
  int sliderheight=180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('BMI Calculator App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          Expanded(child: new RepeatContainerCode(
            colors: Color(0xFF1D1E33),
          cardWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HEIGHT',style: klablestyle,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(sliderheight.toString(),
                    style: knumberstyle,),
                  Text('cm',style: klablestyle,)

                ],
              ),
              Slider(
                value: sliderheight.toDouble(),
                min: 120.0,
                max: 220.0,
                activeColor: Color(0xFFEB1555),
                inactiveColor: Color(0xFF8D8E98),
                onChanged: (double newValue){
                  setState(() {
                    sliderheight=newValue.round();
                  });
                },
              ),
            ],
          ),
          )),
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



