import 'dart:ui';

class Discover {
  final String _title;
  final String _icon;
  final Color _color;

  Discover(this._title, this._icon, this._color);

  Color get color => _color;

  String get icon => _icon;

  String get title => _title;
}