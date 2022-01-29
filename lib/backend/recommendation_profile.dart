import 'dart:ffi';

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
  noPreference,
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

String provTypeToString(HealthcareProviderType healhcareprovidertype) {
  switch (healhcareprovidertype) {
    case HealthcareProviderType.psychologist:
      return 'In Person';
    case HealthcareProviderType.psychiatrist:
      return 'Virtual';
    case HealthcareProviderType.supportGroup:
      return 'Support Group';
  }
}

String typeToString(ConsultationType consultationtype) {
  switch (consultationtype) {
    case ConsultationType.inPerson:
      return 'In Person';
    case ConsultationType.virtual:
      return 'Virtual';
    case ConsultationType.noPreference:
      return 'noPreference';
  }
}

String locationToString(LocationType locationtype) {
  switch (locationtype) {
    case LocationType.island:
      return 'Hong Kong Island';
    case LocationType.kowloon:
      return 'Kowloon';
    case LocationType.newTerritories:
      return 'New Territories';
    case LocationType.noPreference:
      return 'noPreference';
  }
}

String genderToString(Gender gender) {
  switch (gender) {
    case Gender.male:
      return 'Male';
    case Gender.female:
      return 'Female';
    case Gender.other:
      return 'Other';
  }
}

String ageToString(AgeGroup agegroup) {
  switch (agegroup) {
    case AgeGroup.young:
      return 'Young';
    case AgeGroup.middle:
      return 'Middle Aged';
    case AgeGroup.old:
      return 'Old';
  }
}

String treatToString(Treatments treatment) {
  switch (treatment) {
    case Treatments.cbt:
      return 'Cognitive Behavioural Therapy';
    case Treatments.pdt:
      return 'Psychodynamic therapy';
    case Treatments.ht:
      return 'Humanistic therapy';
    case Treatments.pat:
      return 'Psychoanalytic therapy';
    case Treatments.it:
      return 'Integrative or holistic therapy';
    case Treatments.couples:
      return 'Couples therapy';
    case Treatments.notSure:
      return 'notSure';
  }
}

String valToString(Value value) {
  switch (value) {
    case Value.lgbtq:
      return 'LGBTQ';
    case Value.religion:
      return 'Religion';
    case Value.youthServices:
      return 'Youth Services';
    case Value.addiction:
      return 'Addiction';
    case Value.abuse:
      return 'Abuse';
    case Value.mentalDisorder:
      return 'Mental Disorder';
    case Value.alternativeTreatments:
      return 'Alternative Treatments';
    case Value.availability:
      return 'Availability';
    case Value.depression:
      return 'Depression';
    case Value.chronicAnxiety:
      return 'Chronic Anxiety';
    case Value.adhd:
      return 'ADHD';
    case Value.add:
      return 'ADD';
    case Value.educationalPsychology:
      return 'Educational Psychology';
    case Value.racialTrauma:
      return 'Racial Trauma';
    case Value.childsTherapist:
      return 'Child Therapist';
  }
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
    List<String> matches = [];
    List<String> mismatches = [];
    double similarity = 0;

    if (_providerType == other.providerType) {
      similarity++;
      matches.add(provTypeToString(_providerType));
    } else {
      similarity--;
      mismatches.add(provTypeToString(_providerType));
    }

    if (_consultationType != ConsultationType.noPreference) {
      if (_consultationType == other.consultationType) {
        similarity++;
        matches.add(typeToString(_consultationType));
      } else {
        similarity--;
        mismatches.add(typeToString(_consultationType));
      }
    }

    if (_location != LocationType.noPreference) {
      if (_location == other.location) {
        similarity++;
        matches.add(locationToString(_location));
      } else {
        similarity--;
        mismatches.add(locationToString(_location));
      }
    }

    if (_gender == other.gender) {
      similarity++;
      matches.add(genderToString(_gender));
    } else {
      similarity--;
      mismatches.add(genderToString(gender));
    }

    if (_ageGroup == other.ageGroup) {
      similarity++;
      matches.add(ageToString(_ageGroup));
    } else {
      similarity--;
      mismatches.add(ageToString(_ageGroup));
    }

    if (_treatments != Treatments.notSure) {
      if (_treatments == other.treatments) {
        similarity++;
        matches.add(treatToString(_treatments));
      } else {
        similarity--;
        mismatches.add(treatToString(_treatments));
      }
    }

    for (var i = 0; i < _values.length; i++) {
      int idx = -1;
      for (var j = 0; j < other.values.length; j++) {
        if (_values[i] == other.values[j]) {
          idx = i;
          break;
        }
      }
      if (idx != -1) {
        matches.add(valToString(_values[i]));
        similarity++;
      } else {
        mismatches.add(valToString(_values[i]));
        similarity--;
      }
    }
    return RecommendationResult(similarity, matches, mismatches, provider);
  }
}
