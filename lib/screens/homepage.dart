// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../custom_widgets/albumsList.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(actions: [
        IconButton(onPressed: (){}, icon:Icon(Icons.favorite)),
        IconButton(onPressed: (){}, icon:Icon(Icons.add))
      ],
        title:Text("Albums"),
        centerTitle:true,
        elevation: 0.0,
        titleTextStyle:TextStyle(
          fontWeight:FontWeight.bold,
          letterSpacing:2.0,
           ) ,
      ) ,
      body:AlbumsList() ,
    );

  }
}
