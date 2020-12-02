import 'package:first_app/model/anime.dart';

class AnimeOperations{
  List<Anime> _animes = [];
  add(String name, String url, String type, String status, double rating) {
    Anime anime = new Anime();
    anime.name = name;
    anime.imgUrl = url;
    anime.type = type;
    anime.status = status;
    anime.rating = rating;
    _animes.add(anime);
  }

  List<Anime> getAnimes(){
    return _animes;
  }
}