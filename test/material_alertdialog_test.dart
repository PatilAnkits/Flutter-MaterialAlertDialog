import 'package:flutter/material.dart';
import 'package:material_alertdialog/animatedmaterial_alertdialog.dart';
import 'package:material_alertdialog/material_alertdialog.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Material Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
         
          children: <Widget>[
            RaisedButton(onPressed: (){  
            
              showDialog(context: context, builder:(context)=>
                     MaterialAlertDialog(

                      height: 250,

                      title: "Exit",

                      message: "Are you sure you want to quit",

                     onPresedPositiveButton: (){
                       //add what you want for navigate
                     },

                      onPresedNegativeButton: (){
                        Navigator.pop(context);
                      },

                   ),
               );
            }, 
            child: Text('MaterialAlertDialog',style: TextStyle(color:Colors.white)),
             color:Colors.redAccent
            ),

            RaisedButton(onPressed: (){  
            
              showDialog(context: context, builder:(context)=>
                     AnimatedMaterialAlertDialog(

                      imagePath: "lib/assets/images/steth.png",
              
                      title: "Exit",

                      message: "Are you sure you want to quit",

                     onPresedPositiveButton: (){
                       //add what you want for navigate
                     },

                      onPresedNegativeButton: (){
                        Navigator.pop(context);
                      },

                   ),
               );
            }, 
            child: Text('Animated MaterialAlertDialog',style: TextStyle(color:Colors.white)),
             color:Colors.redAccent
            )
          ],
        ),
      ),
    );
  }
}
