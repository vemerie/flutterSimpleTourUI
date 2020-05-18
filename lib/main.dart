import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Hello World Tour",
      home:Scaffold(
        appBar:AppBar(title:Text("Hello World Travel App"),
        backgroundColor:Colors.deepPurple,),
        body: Builder(builder: (context)=>SingleChildScrollView(
          child:
                      Padding(
                      padding:EdgeInsets.all(20),
                      child:
                      Center(
        
        child:Column(children:[
          Padding(
          padding:EdgeInsets.all(10),
            child:
              Text('Hello Traveller',
                  style:TextStyle(
                  fontSize:26,
                  fontWeight:FontWeight.bold,
                   color:Colors.deepPurple
                  )
                  )
          ),
        
          
            Padding(
          padding:EdgeInsets.all(5),
            child:Text('Discover the world',
                  style:TextStyle(
                  fontSize:20,                                   fontWeight:FontWeight.bold,
                   color:Colors.deepPurpleAccent
                  )
                  )
            ),
          
           Padding(
          padding:EdgeInsets.all(15),
            child:  Image.network(
          'https://images.pexels.com/photos/289740/pexels-photo-289740.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
           ),
          
         
        Padding(
          padding:EdgeInsets.all(15),
            child: 
          RaisedButton(
 child: Text('Contact Us'),
 onPressed: () => contactUs(context),),)

          

          
        ]
                    )
        )
        ))
                      )
    )
      );
 
  }
}

void contactUs(BuildContext context){
  showDialog(
    context:context,
    builder:(BuildContext context){
      return AlertDialog(
      title:Text('Contact Us'),
        content: Text('Mail us hello@World.com'),
        actions:<Widget>[
          FlatButton(
          child:Text('Close'),
          onPressed:()=>Navigator.of(context).pop(),
          )
        ]
      );
    }
  );
}
