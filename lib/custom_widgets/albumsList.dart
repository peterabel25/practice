// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/albumprovider.dart';
import '../screens/albumdetails.dart';

class AlbumsList extends StatefulWidget {
  const AlbumsList({Key? key}) : super(key: key);

  @override
  State<AlbumsList> createState() => _AlbumsListState();
}

class _AlbumsListState extends State<AlbumsList> {
  @override
  void initState() {
    AlbumProvider albumProvider = Provider.of(context, listen: false);
    albumProvider.getAlbums();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AlbumProvider albumProvider = Provider.of(context);
    return ListView.builder(
        itemCount: albumProvider.albums.length,
        itemBuilder: ((context, index) => InkWell(
              onTap: () {
                albumProvider.selectAlbum(
                    albumId: albumProvider.albums[index].albumId,
                    title: albumProvider.albums[index].title,
                    userId: albumProvider.albums[index].userId
                    );
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => AlbumDetails()));
              },
              child: Card(
                child: Column(
                  children: [
                    Text("${albumProvider.albums[index].albumId}"),
                    Text("${albumProvider.albums[index].title}")
                  ],
                ),
              ),
            )));
  }
}
