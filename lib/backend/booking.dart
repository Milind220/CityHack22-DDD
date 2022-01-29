import 'package:sampleapp/backend/healthcare_provider.dart';
import 'package:sampleapp/backend/user.dart';

class Booking {
  final User _user;
  final HealthcareProvider _provider;
  final DateTime _date;

  Booking(
    this._user,
    this._provider,
    this._date,
  );

  User get user => _user;
  DateTime get date => _date;
  HealthcareProvider get provider => _provider;
}
