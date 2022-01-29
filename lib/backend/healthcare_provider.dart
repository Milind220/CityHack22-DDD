import 'package:json_annotation/json_annotation.dart';
import 'package:sampleapp/backend/question.dart';
import 'package:sampleapp/backend/recommendation_profile.dart';

@JsonSerializable()
class HealthcareProvider {
  final List<Question> _questions;
  final RecommendationProfile _profile;
  final String _name;
  final String _address;

  HealthcareProvider(
    this._name,
    this._address,
    this._profile,
    this._questions,
  );

  String get name => _name;
  String get address => _address;

  List<Question> get questions => _questions;
  RecommendationProfile get profile => _profile;
}
