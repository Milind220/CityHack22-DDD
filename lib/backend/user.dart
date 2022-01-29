import 'package:sampleapp/backend/recommendation_profile.dart';

class User {
  final String _name;
  final String _userId;
  RecommendationProfile? profile;

  User(
    this._name,
    this._userId,
    this.profile,
  );

  String get name => _name;
  String get userId => _userId;
}
