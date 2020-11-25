import 'package:bmi_calculator/RepeatContainerFile.dart';
import 'package:flutter/material.dart';
import 'constantfile.dart';
import 'input_page.dart';
class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text('Your Result',style: ktitleStyle,),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Normal',style: kresultTextStyle,),
                  Text('18.3',style: kBMITextStyle,),
                  Text('BMI is low you should move to work more',style: kbodyTextStyle,),
                ],

              ),
            ),
          ),
          Expanded(
          child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
                },
                child: Container(
                  child: Center(child: Text('ReCalculate',style: klargeButtonstyle,)),
                  color: Color(0xFFEB1555),
                  margin: EdgeInsets.only(top:10.0),
                  width: double.infinity,
                  height: 60.0,
                ),
              ),
          ),
        ],
      ),
    );
  }
}