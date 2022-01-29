import 'package:flutter/gestures.dart';
import 'package:sampleapp/backend/healthcare_provider.dart';
import 'package:sampleapp/backend/recommendation_result.dart';

enum HealthcareProviderType {
  psychologist,
  psychiatrist,
  supportGroup,
}

enum ConsultationType {
  inPerson,
  virtual,
  noPrereference,
}

enum LocationType {
  island,
  kowloon,
  newTerritories,
  noPreference,
}

enum Gender {
  male,
  female,
  other,
}

enum AgeGroup {
  young, // 20 - 30
  middle, // 30 - 50
  old, // 50+
}

enum Treatments {
  cbt, // Cognitive Behavioural Therapy
  pdt, // Psychodynamic therapy
  ht, // Humanistic therapy
  pat, // Psychoanalytic therapy
  it, // integrative or holistic therapy
  couples, // couples therapy
  notSure,
}

enum Value {
  lgbtq,
  religion,
  youthServices,
  addiction,
  abuse,
  mentalDisorder,
  alternativeTreatments,
  availability,
  depression,
  chronicAnxiety,
  adhd,
  add,
  educationalPsychology,
  racialTrauma,
  childsTherapist,
}

class RecommendationProfile {
  final HealthcareProviderType _providerType;
  final ConsultationType _consultationType;
  final LocationType _location;
  final Gender _gender;
  final AgeGroup _ageGroup;
  final Treatments _treatments;
  final List<Value> _values;

  HealthcareProviderType get providerType => _providerType;
  ConsultationType get consultationType => _consultationType;
  LocationType get location => _location;
  Gender get gender => _gender;
  AgeGroup get ageGroup => _ageGroup;
  Treatments get treatments => _treatments;
  List<Value> get values => _values;

  RecommendationProfile(
      this._providerType,
      this._consultationType,
      this._location,
      this._gender,
      this._ageGroup,
      this._treatments,
      this._values);

  RecommendationResult compare(
      RecommendationProfile other, HealthcareProvider provider) {
    double similarity = 1;
    return RecommendationResult(similarity, [], [], provider);
  }
}
