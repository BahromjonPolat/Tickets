import 'package:ticket/core/components/exporting_packages.dart';

class Ticket {
  late String _id;
  late EventModel _event;
  late String _place;
  late double _price;

  Ticket(this._id, this._event, this._place, this._price);

  Ticket.fromJson(Map<String, dynamic> json) {
    _id = json['_id'];
    _event = (json['event'] as EventModel);
    _price = json['place'];
    _place = json['price'];
  }

  Map<String, dynamic> toJson() => {
        'event': _event.id,
        'place': _place,
        'price': _price,
      };

  String get id => _id;

  EventModel get event => _event;

  String get place => _place;

  double get price => _price;
}
