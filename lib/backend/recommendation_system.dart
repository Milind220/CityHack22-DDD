import 'package:sampleapp/backend/healthcare_provider.dart';
import 'package:sampleapp/backend/recommendation_result.dart';
import 'package:sampleapp/backend/user.dart';

class RecommendationSystem {
  static final RecommendationSystem _instance =
      RecommendationSystem._privateConstructor();

  static RecommendationSystem get instance => _instance;

  RecommendationSystem._privateConstructor();

  List<RecommendationResult> getTopRecommendations(
      User user, List<HealthcareProvider> providers, int numResults) {
    if (user.profile != null) return [];

    List<RecommendationResult> res = [];

    for (var i = 0; i < providers.length; i++) {
      res.add(user.profile!.compare(providers[i].profile, providers[i]));
    }

    res.sort((a, b) => a.score >= b.score ? 1 : 0);
    return res.sublist(0, numResults);
  }
}
