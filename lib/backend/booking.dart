import 'package:sampleapp/backend/user.dart';

class Booking {
  final User _user;
  final HealthcareProvider provider; // Has to be get and set so left it public.
  final DateTime _date;

  Booking(
    this._user,
    this.provider,
    this._date,
  );

  User get user => _user;
  DateTime get date => _date;
}
