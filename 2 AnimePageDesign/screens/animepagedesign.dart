import 'package:first_app/helpers/animeoperations.dart';
import 'package:first_app/helpers/productoperations.dart';
import 'package:first_app/model/product.dart';
import 'package:flutter/material.dart';

class AnimePageDesign extends StatefulWidget {
  @override
  _AnimePageDesignState createState() => _AnimePageDesignState();
}

class _AnimePageDesignState extends State<AnimePageDesign> {
  Widget _showAnime(String imgUrl, String name, String status, double rating) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(imgUrl),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.only(left: 3,right: 3,top: 2,bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.blue.shade500
                  ),
                  child: Text('Anime',style: TextStyle(color: Colors.white, fontSize: 14),),
                )
              ],
            ),
            Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            Text(status, style: TextStyle(fontSize: 14),)
          ],
        ),
      ),
    );
  }

  List<Widget> _getChildren(){
    return animeOperations.getAnimes().map((anime) => _showAnime(anime.imgUrl, anime.name, anime.status, anime.rating)).toList();
  }

  AnimeOperations animeOperations = new AnimeOperations();
  _loadAnimes(){
    final List<String> statuses =[
      'Streaming',
      'Upcoming',
      'Upcoming'
    ];
    final List<String> names =[
      'Jojo Bizzare',
      'Death Note',
      'Black Clover'
    ];
    final List<String> urls = [
      'https://animeflix.in/wp-content/uploads/2020/09/Download-JoJos-Bizarre-Adventure-Diamond-is-Unbreakable-2016-Dual-Audio-English-Japanese-720p-MB-200x300.jpg',
      'https://animeflix.in/wp-content/uploads/2020/06/MV5BODkzMjhjYTQtYmQyOS00NmZlLTg3Y2UtYjkzN2JkNmRjY2FhXkEyXkFqcGdeQXVyNTM4MDQ5MDc@._V1_UY1200_CR9906301200_AL_-Custom-Custom.jpg',
      'https://animeflix.in/wp-content/uploads/2020/07/1587888ae53ea87e406730499306-Custom.jpg'
    ];
    for (int i=1; i<=3; i++) {
      animeOperations.add(names[i-1], urls[i-1], 'Anime', statuses[i-1], 3.1*i);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadAnimes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
                children: [
              Container(margin: EdgeInsets.only(bottom: 5),child: Text('Streaming this Week & Upcoming',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)))]),
            Row(crossAxisAlignment: CrossAxisAlignment.baseline,children: _getChildren()),
            Row(crossAxisAlignment: CrossAxisAlignment.baseline,children: _getChildren())
            // Row()
          ],
        ),
      ),
    );
  }
}
