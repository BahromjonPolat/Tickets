class EventModel {
  late String _id;
  late String _title;
  late String _genre;
  late String _updates;
  late String _imageUrl;
  late String _details;
  late double _minPrice;
  late double _maxPrice;
  late DateTime _dateTime;

  EventModel(
    this._title,
    this._genre,
    this._updates,
    this._details,
    this._imageUrl,
    this._minPrice,
    this._maxPrice,
    this._dateTime,
  );

  EventModel.withId(
    this._id,
    this._title,
    this._genre,
    this._updates,
    this._details,
    this._imageUrl,
    this._minPrice,
    this._maxPrice,
    this._dateTime,
  );

  EventModel.fromJson(Map<String, dynamic> json) {
    _id = json['_id'];
    _title = json['title'];
    _genre = json['genre'];
    _updates = json['updates'];
    _details = json['details'];
    _maxPrice = json['maxPrice'];
    _minPrice = json['minPrice'];
    _imageUrl = json['imageUrl'];
    _dateTime = json['dateTime'].toDate();
  }

  Map<String, dynamic> toJson() => {
        'title': _title,
        'genre': _genre,
        'updates': _updates,
        'details': _details,
        'minPrice': _minPrice,
        'maxPrice': _maxPrice,
        'imageUrl': _imageUrl,
        'dateTime': _dateTime.toString(),
      };

  String get id => _id;

  String get title => _title;

  double get maxPrice => _maxPrice;

  double get minPrice => _minPrice;

  String get details => _details;

  String get updates => _updates;

  String get imageUrl => _imageUrl;

  String get genre => _genre;

  DateTime get dateTime => _dateTime;
}
