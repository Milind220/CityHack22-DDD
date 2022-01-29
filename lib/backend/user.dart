import 'package:sampleapp/backend/booking.dart';

class User {
  // Made them potentially nullable for the anonymous user feature
  final String? _name;
  final String? _userId;
  final RecommendationProfile? profile;

  User(
    this._name,
    this._userId,
    this.profile,
  );

  String? get name => _name;
  String? get userId => _userId;
}
