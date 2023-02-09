import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:practice_app/modals/album_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class AlbumProvider with ChangeNotifier {
  Album album = Album(userId: 0, albumId: 0, title: "");

  List<Album> albums = [];

  List<Album> favoriteAlbums = [];

  Future<void> getAlbums() async {
    http.Response response =
        await http.get(Uri.parse("http://jsonplaceholder.typicode.com/albums"));

    List<dynamic> responseList = json.decode(response.body);

    for (var album in responseList) {
      albums.add(
        Album(
            userId: album['userId'],
            albumId: album['id'],
            title: album['title']),
      );
    }
    notifyListeners();
  }

  selectAlbum({userId, albumId, title}) {
    album = Album(userId: userId, albumId: albumId, title: title);
    notifyListeners();
  }
}
