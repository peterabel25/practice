// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:practice_app/providers/albumprovider.dart';
import 'package:practice_app/screens/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>AlbumProvider())
      ],
      child: MaterialApp(
        home:Homepage() ,
        debugShowCheckedModeBanner: false,
        title: "practice app",
        theme: ThemeData(primarySwatch: Colors.deepPurple),
      ),
    ),
  );
}
