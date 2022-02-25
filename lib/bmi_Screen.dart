import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bmi_calculator/bmi_result.dart';
class Bmi_screen extends StatefulWidget {
  const Bmi_screen({Key? key}) : super(key: key);

  @override
  _Bmi_screenState createState() => _Bmi_screenState();
}

class _Bmi_screenState extends State<Bmi_screen> {
  bool isMale = true;
  double height = 120 ;
  int age = 20;
  int weight = 45 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text('BMI Calculator',

        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assests/images/Male.png'),
                              width: 90,
                              height: 90,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.red : Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image:
                              AssetImage('assests/images/Female-icon.png'),
                              width: 90,
                              height: 90,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: !isMale ? Colors.red : Colors.grey[400]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HIGHET',
                      style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${height.round()}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35),
                            ),
                            SizedBox(width:
                            5,),
                            Text(
                              'CM',
                              style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ],
                        ),
                        Slider(
                            value: height,
                            max: 300,
                            min: 20,
                            onChanged: (value) {
                              setState(() {
                                height = value ;
                              });
                            })
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightBlue[900]),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0)),
                          Text('$age',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0)),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;

                                  });

                                },
                                child: Icon(Icons.add),
                                backgroundColor: Colors.grey,
                                heroTag: '++age',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    --age;

                                  });

                                },
                                child: Icon(Icons.remove),
                                heroTag: '--age',
                                backgroundColor: Colors.grey,
                              )
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue[900]),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0)),
                          Text('$weight',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0)),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                  onPressed: () {
                                    setState(() {
                                      weight++;

                                    });

                                  },
                                  child: Icon(Icons.add),
                                  backgroundColor: Colors.grey,
                                  heroTag: 'weight++'

                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    --weight;

                                  });
                                },
                                child: Icon(Icons.remove),
                                backgroundColor: Colors.grey,
                                heroTag: 'weight--',
                              )
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue[900]),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height/100,2);
                print(result.round());
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => BmiResult(
                        isMale ,
                        age,result

                    )
                )
                );

              }

              ,
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
