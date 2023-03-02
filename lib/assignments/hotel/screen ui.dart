import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: htlui(),));
}
class htlui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/long-stay-hotel-accommodation.jpg"))),
            child: Stack(
                children: const [
                  Positioned(
                      bottom: 50,
                      left: 15,
                      child:

                      Text("Crown Plaza",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),)),
                  Positioned(
                      bottom: 30,
                      left: 15,
                      child:Text("Kochi,Kerala")

                  ),
                ]) ));
  }

}