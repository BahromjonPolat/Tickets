class UserModel {
  String? _id;
  String? _name;
  String? _email;
  String? _password;
  String? _imageUrl;
  DateTime? _firstTime;
  DateTime? _lastAction;
  bool? _isOnline;

  UserModel(
    this._name,
    this._email,
    this._password,
    this._imageUrl,
    this._firstTime,
    this._lastAction,
    this._isOnline,
  );

  UserModel.fromJson(Map<String, dynamic> json) {
    _id = json['_id'];
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
    _imageUrl = json['imageUrl'];
    _isOnline = json['isOnline'];
    _firstTime = json['firstTime'].toDate();
    _lastAction = json['lastAction'].toDate();
  }

  Map<String, dynamic> toMap() => {
        // 'id': _id,
        'name': _name,
        'email': _email,
        'password': _password,
        'imageUrl': _imageUrl,
        'firstTime': _firstTime.toString(),
        'lastAction': _lastAction.toString(),
        'isOnline': _isOnline,
      };

  String get id => _id!;

  String get name => _name!;

  bool get isOnline => _isOnline!;

  DateTime get lastAction => _lastAction!;

  DateTime get firstTime => _firstTime!;

  String get imageUrl => _imageUrl!;

  String get password => _password!;

  String get email => _email!;
}
