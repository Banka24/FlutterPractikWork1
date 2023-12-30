import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text("Flower Shop", style: TextStyle(fontSize: 30, fontFamily: "casual"),),
          ),
          Image.network('https://w-dog.ru/wallpapers/11/18/389922058154790/cvety-makro-fotografii-podsolnuxi.jpg', ),
          Text("Sunny Flowers", style: TextStyle(fontFamily: "cursive", fontSize: 52),),
          Text("12 dosen", style: TextStyle(fontSize: 14, color: Colors.black54),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.share, color: Colors.indigo, size: 40,),
              Icon(Icons.favorite, color: Colors.indigo, size: 40,)
            ],
          ),
          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
            style: TextStyle(fontSize: 14, fontFamily: "casual"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add_shopping_cart),
                  Text("ADD TO CART", style: TextStyle(fontSize: 20),)
                ],
              ),
              onPressed: () {
                print("Pressed");
              },
            ),
          )
        ],
      ),
    );
  }
}