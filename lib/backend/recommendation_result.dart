import 'package:sampleapp/backend/healthcare_provider.dart';

class RecommendationResult {
  final double _score;
  final List<String> _matches;
  final List<String> _mismatches;
  final HealthcareProvider _provider;

  double get score => _score;
  List<String> get matches => _matches;
  List<String> get mismatches => _mismatches;
  HealthcareProvider get provider => _provider;

  RecommendationResult(
      this._score, this._matches, this._mismatches, this._provider);
}
