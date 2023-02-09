// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:practice_app/providers/albumprovider.dart';
import 'package:provider/provider.dart';

class AlbumDetails extends StatefulWidget {
  const AlbumDetails({Key? key}) : super(key: key);

  @override
  State<AlbumDetails> createState() => _AlbumDetailsState();
}

class _AlbumDetailsState extends State<AlbumDetails> {
  @override
  Widget build(BuildContext context) {
    AlbumProvider albumProvider = Provider.of(context);
    return Scaffold(
      body: Card(
        child: Column(
          children: [
            Text("${albumProvider.album.albumId}"),
            Text("${albumProvider.album.title}")
          
          ],
        ),
      ),
    );
  }
}
