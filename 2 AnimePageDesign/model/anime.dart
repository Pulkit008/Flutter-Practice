class Anime{
  String _name;
  String _imgUrl;
  String _type;
  String _status;
  double _rating;

  String get status => _status;

  set status(String value) {
    _status = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get imgUrl => _imgUrl;

  double get rating => _rating;

  set rating(double value) {
    _rating = value;
  }

  String get type => _type;

  set type(String value) {
    _type = value;
  }

  set imgUrl(String value) {
    _imgUrl = value;
  }
}