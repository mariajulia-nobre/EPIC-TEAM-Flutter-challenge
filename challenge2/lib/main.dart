import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(backgroundColor:Colors.lime,
      body:SafeArea(
        child:Center(child:Column(children:[ 
        const CircleAvatar(
          radius:100,
          backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25),
          ),
        const Text('Maria Júlia Nobre', style: TextStyle(fontSize:25,color: Colors.white),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25),
          ),
        Container(
          width: 280, 
          child: const Text('Lorem ipsum dolor sit amet consectetur adipiscing elit ac, conubia lacus libero enim purus imperdiet lectus justo diam, faucibus blandit ultricies vestibulum quisque parturient natoque', style: TextStyle(fontSize:20, color: Colors.white),textAlign: TextAlign.center,
          ),
          ),
          const Padding(padding: EdgeInsets.only(top: 25),
          ),
          Text('numero de clicks: $_contador', style: const TextStyle(fontSize:25,color: Colors.green),),
          const Padding(padding: EdgeInsets.only(top: 25),
          ),
          ButtonTheme(
                  minWidth: 220.0,
                  height: 80.0,
                  child: RaisedButton(
                    color: Colors.deepPurple.shade400,
                    onPressed: () {
                      setState(() {
                        _contador++;
                      });
                    },
                    child: const Text(
                      "Button",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
        ],),),)
      )
        );
  }
}
  