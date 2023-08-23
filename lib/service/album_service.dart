import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/album.dart';

abstract class AlbumService {
  Future<List<Album>> fetchAlbums();
}

class AlbumServiceImplementation implements AlbumService {
  @override
  Future<List<Album>> fetchAlbums() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
      final List<Album> result = jsonDecode(response.body)
          .map<Album>((json) => Album.fromJson(json))
          .toList();
      return result;
    } catch (e) {
      throw (e.toString());
    }
  }
}
