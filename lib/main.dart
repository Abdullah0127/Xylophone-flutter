import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main() => runApp(Xylophone()) ;

class Xylophone extends StatefulWidget {
  const Xylophone({ Key? key }) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

  void playSound(int sound){
     final player = AudioPlayer();
             player.play(AssetSource('note$sound.wav'));

  }

  Expanded display({Color color=Colors.red , int soundNumber=1 }){
      return Expanded(
                 child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    
                    backgroundColor: color, 
                  ),
                  
                  
                  
                  child:Text('') ,onPressed:() {
                          playSound(soundNumber);
                    },
                         
                    ),
               );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              display(color:Colors.red, soundNumber:1),
              display(color:Colors.blue, soundNumber:2),
              display(color:Colors.green, soundNumber:3),
              display(color:Colors.yellow, soundNumber:4),
              display(color:Colors.purple, soundNumber:5),
              display(color:Colors.brown, soundNumber:6),
              display(color:Colors.pink, soundNumber:7),
             
             

                 
             

            ],
          ),
        
        
        ),
        
      ),
    );
  }
}
