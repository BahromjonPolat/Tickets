class EventModel {
  late String _id;
  late String _title;
  late String _genre;
  late String _updates;
  late String _details;
  late double _minPrice;
  late double _maxPrice;

  EventModel(
    this._title,
    this._genre,
    this._updates,
    this._details,
    this._minPrice,
    this._maxPrice,
  );

  EventModel.fromJson(Map<String, dynamic> json) {
    _id = json['_id'];
    _title = json['title'];
    _genre = json['genre'];
    _updates = json['updates'];
    _details = json['details'];
    _maxPrice = json['maxPrice'];
    _minPrice = json['minPrice'];
  }

  Map<String, dynamic> toJson() => {
        'title': _title,
        'genre': _genre,
        'updates': _updates,
        'details': _details,
        'minPrice': _minPrice,
        'maxPrice': _maxPrice,
      };

  String get id => _id;

  String get title => _title;

  double get maxPrice => _maxPrice;

  double get minPrice => _minPrice;

  String get details => _details;

  String get updates => _updates;

  String get genre => _genre;
}
