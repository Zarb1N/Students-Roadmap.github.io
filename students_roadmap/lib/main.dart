import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:students_roadmap/navigationExample.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roadmap',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CardScreen(),
    );
  }
}

class Authorization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Testing')),
      body: Container(
        child: Center (
          child: Column(
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            children: <Widget>[
              Text(
                'Please enter in to the app',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
              ), 
              Container(
                child: Column (children: [
                  Container (
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CardScreen()),
                          );
                        },
                        child: Text('Enter', style: TextStyle(
                          fontSize: 20,
                        ),),
                        textColor: Colors.white,
                        color: Colors.green,
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 0
                      ),
                      height: 50,
                      width: 250,
                    ),
                  Container (
                    width: 250,
                    height: 50,
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 0
                    ),
                    child: FlatButton( 
                      onPressed: () {/* */},
                      child: Text('Exit', style: TextStyle(fontSize: 20)),
                      textColor: Colors.white,
                      color: Colors.red[700],
                    )
                  )
                ]),
              )
            ]
          )
        ),
        color: Color(0xFF999999),
      ),
    );
  }
}


class CardScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text(' '),
        backgroundColor: Color(0xFF006666),
      ),
      body: Container (
        color: Color(0xFFCCCCCC),
        child: Stack (
        children: <Widget>[
          Container(
            child: FlatButton (
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation()),
                  );
                },
              child: Image(
                image: AssetImage('assets/images/card.png'),
                width: 310,
              ),
            ),
            alignment: Alignment.topCenter, 
            margin: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 0
            ),
          ),
          NFCBottomScreen(),
        ],
      ),
      )
    );
  }
}


class NFCBottomScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        child: Container(
          child: Center ( 
            child: Text(
              'Приложите социальную карту к NFC-антенне вашего смартфона'.toUpperCase(),
              style: TextStyle(
                fontSize: 30,
                height: 1.5,
                fontWeight: FontWeight.bold,
                //fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          height: 550.0,
          margin: EdgeInsets.symmetric(
            horizontal: 30
          ),
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}



class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}


class _BottomNavigationState extends State<BottomNavigation> {
  int _currentBarIndex = 0;
  
  // Content of widgets
  static  List<Widget> _widgetContent = <Widget> [
    
    Container(
      color: Color(0xFFEEEEEE),
      width: double.infinity,
      child: Column (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 310,
            height: 195,
            margin: EdgeInsets.symmetric(
              vertical: 40,
            ),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Container(
                    height: 140.0,
                    child: Center(
                      child: Text('156 руб.', 
                        style: TextStyle (
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ),
                Container (
                  margin: EdgeInsets.only(
                    top: 5.0,
                    left: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Кошелёк'.toUpperCase(), 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ), 
                      Container(
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/train-public-transport.png'),
                              height: 30,
                              width: 30,
                            ),
                            Image(
                              image: AssetImage('assets/images/train-public-transport.png'),
                              height: 30,
                              width: 30,
                            ),
                            Image(
                              image: AssetImage('assets/images/train-public-transport.png'),
                              height: 30,
                              width: 30,
                            ),
                            Image(
                              image: AssetImage('assets/images/train-public-transport.png'),
                              height: 30,
                              width: 30,
                            )
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ), 
          ),
            
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 60,
            ),
            color: Color(0xFFCCCCCC),
            child: RaisedButton (
              color: Colors.blue,
              onPressed: () {/* */},
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Пополнить'.toUpperCase(),
                style: TextStyle (
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                
              ),
            ),
          )
        ],
      )
    ),
    
    Container(
      child: Column (
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 30.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Безлимит'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '30 дней'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '415 руб.',
                      style: TextStyle (
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/train-public-transport.png'),
                          height: 30,
                          width: 30,
                        ),
                        Text (
                          '+ МЦД',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          )
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 30.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Безлимит'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '30 дней'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '500 руб.',
                      style: TextStyle (
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/train-public-transport.png'),
                          height: 30,
                          width: 30,
                        ),
                        Text (
                          '+ МЦД + Пригород'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          )
                        )
                      ], 
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )
    ),
    
    Container(
      child: Column (
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 30.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Безлимит'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '30 дней'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '270 руб.',
                      style: TextStyle (
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/train-public-transport.png'),
                          height: 30,
                          width: 30,
                        ),
                        Image(
                          image: AssetImage('assets/images/train-public-transport.png'),
                          height: 30,
                          width: 30,
                        ),
                        Image(
                          image: AssetImage('assets/images/train-public-transport.png'),
                          height: 30,
                          width: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 30.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Безлимит'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '30 дней'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '325 руб.',
                      style: TextStyle (
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/train-public-transport.png'),
                          height: 30,
                          width: 30,
                        ),
                        Image(
                          image: AssetImage('assets/images/train-public-transport.png'),
                          height: 30,
                          width: 30,
                        ),
                        Image(
                          image: AssetImage('assets/images/train-public-transport.png'),
                          height: 30,
                          width: 30,
                        ),
                        Text (
                          '+ Пригород'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          )
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )
    ),
  ];

static  List<Widget> _divider = <Widget> [
    Row(
      children: [
        Expanded(
          flex: 1,
          child: Divider(
            color: Colors.black,
            thickness: 4,
            height: 0,
            indent: 0,
            endIndent: 0,
          ),
        ),
        Expanded (
          flex: 1,
          child: Divider(
            color: Colors.black,
            thickness: 2,
            height: 0,
            indent: 0,
            endIndent: 0,
          ),
        ),
        Expanded (
          flex: 1,
          child: Divider(
            color: Colors.black,
            thickness: 2,
            height: 0,
            indent: 0,
            endIndent: 0,
          ),
        )
      ],
    ),
    Row(
      children: [
        Expanded(
          flex: 1,
          child: Divider(
            color: Colors.black,
            thickness: 2,
            height: 0,
            indent: 0,
            endIndent: 0,
          ),
        ),
        Expanded (
          flex: 1,
          child: Divider(
            color: Colors.black,
            thickness: 4,
            height: 0,
            indent: 0,
            endIndent: 0,
          ),
        ),
        Expanded (
          flex: 1,
          child: Divider(
            color: Colors.black,
            thickness: 2,
            height: 0,
            indent: 0,
            endIndent: 0,
          ),
        )
      ],
    ),
    Row(
      children: [
        Expanded(
          flex: 1,
          child: Divider(
            color: Colors.black,
            thickness: 2,
            height: 0,
            indent: 0,
            endIndent: 0,
          ),
        ),
        Expanded (
          flex: 1,
          child: Divider(
            color: Colors.black,
            thickness: 2,
            height: 0,
            indent: 0,
            endIndent: 0,
          ),
        ),
        Expanded (
          flex: 1,
          child: Divider(
            color: Colors.black,
            thickness: 4,
            height: 0,
            indent: 0,
            endIndent: 0,
          ),
        )
      ],
    )
  ];

  String top = 'Нажмите на кнопочку';
  var currentWidget = _widgetContent[0];

  changeWidget(index) {
    setState(() {
      currentWidget = _widgetContent[index];
      currentDivider = _divider[index];
    });
  }

  
  
  var currentDivider = _divider[0];
  
  changeDivider(index) {

  }


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Информация о карте'),
        backgroundColor: Color(0xFF006666),
      ),
      body: Center(
        /*child: _widgetContent.elementAt(_currentBarIndex),*/
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 50 / 100 - (56 + 24),
              width: double.infinity,
              color: Color(0xFFCCCCCC),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Container(
                    child: Image(
                      image: AssetImage('assets/images/card.png'),
                      width: 310,
                    ),
                  ),
                  Column (
                   children: [
                     Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: FlatButton(
                          onPressed: () {changeWidget(0);},
                          child: Text('Кошелек'.toUpperCase(),
                            style: TextStyle (
                              color: Color(0xFF006666),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: FlatButton(
                          onPressed: () {changeWidget(1);},
                          child: Text('Метро'.toUpperCase(),
                            style: TextStyle (
                              color: Color(0xFF006666),
                            ),
                          ),
                        ),
                      ), 
                      Expanded(
                        flex: 3,
                        child: FlatButton(
                          onPressed: () {changeWidget(2);},
                          child: Text('ТАТ'.toUpperCase(),
                            style: TextStyle (
                              color: Color(0xFF006666),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    child: currentDivider,
                  )
                   ],
                  )
                ]
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 50 / 100,
              child: currentWidget,
            ),
          ],
        )
      ),
    );
  }

}

