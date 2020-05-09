import 'package:flutter/material.dart';


class AnimatedMaterialAlertDialog extends StatelessWidget {
  final double height;
  final String imagePath;
  final String title;
  final String message;
  final Function onPresedPositiveButton;
final Function onPresedNegativeButton;
   const AnimatedMaterialAlertDialog({
    Key key,
    this.height = 350.0,
    @required this.imagePath,
    @required this.message,
    @required this.onPresedPositiveButton,
    @required this.onPresedNegativeButton,
    @required this.title,
  }) : super(key: key);


  @override
  Widget build(BuildContext context){
   
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );  
  }
  
  _buildChild(BuildContext context) => Container(
    height: 290,
    decoration: BoxDecoration(
      color: Colors.redAccent,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(18))
    ),
    child: Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagePath,height: 120,width: 120,),
          ),
          width: double.infinity,
      decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(18))
    ),
        ),
        SizedBox(height:20),
        Text(title,style: TextStyle(fontSize:20,color:Colors.white,fontWeight: FontWeight.bold),),
        SizedBox(height:15),
        Padding(
          padding: const EdgeInsets.only(right: 10,left: 10),
          child: Text(message,style: TextStyle(fontSize:15,color:Colors.white),textAlign:TextAlign.center,),
        ),
        SizedBox(height:20),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(onPressed: (){
              onPresedNegativeButton();
              
            }, child: Text('No'),),
            RaisedButton(onPressed: (){
              onPresedPositiveButton();
            }, 
            child: Text('Yes',style: TextStyle(color:Colors.redAccent)),
            color:Colors.white),
          ],
        )
      ],
    ),
  );
}

  