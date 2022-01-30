import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:sampleapp/backend/healthcare_provider.dart';
import 'package:sampleapp/backend/login_manager.dart';
import 'package:sampleapp/backend/recommendation_profile.dart';
import 'package:sampleapp/backend/user.dart';

class DataManager {
  // final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addUser(
    String name,
    String uid,
  ) async {
    var _db = FirebaseFirestore.instance;
    var userDoc = _db.collection('users').doc(uid);
    userDoc.set({
      'name': name,
      'hasProfile': false,
    }).catchError((error) => print(error.toString()));
  }

  Map<String, dynamic> _profileToMap(RecommendationProfile profile) {
    return {
      'has_profile': true,
      'providerType': profile.providerType,
      'consultationType': profile.consultationType,
      'locationType': profile.location,
      'gender': profile.gender,
      'ageGroup': profile.ageGroup,
      'treatments': profile.treatments,
      'values': profile.values,
    };
  }

  Future<void> updateUserProfile(User user) async {
    if (user.profile == null) return;
    var _db = FirebaseFirestore.instance;

    var ref = _db.collection('users').doc(user.userId);

    var data = _profileToMap(user.profile!);

    return ref.set(data, SetOptions(merge: true));
  }

  // Read user data from fires
  // Future<List<HealthcareProvider>> getAllDoctors() async {
  //   var ref = _db.collection('providers');
  //   var snapshot = await ref.get();
  //   var data = snapshot.docs.map((s) => s.data()).toList();

  //   for (var provider_data in data) {
  //     String name = provider_data['name'];
  //     String address = provider_data['address'];
  //     Map<String, String> questions = provider_data['questions'];
  //     List<int> profile = provider_data['recommendation_profile'];
  //   }
  //   ;
  // }

  // Retrieves a single quiz document
  // Future<User> getUserData() async {
  //   var user = LoginManager.instance.user!;
  //   var ref = _db.collection('users').doc(user.uid);
  //   var snapshot = await ref.get();
  //   var data = snapshot.data();

  //   String name = data!['name'];
  //   HealthcareProviderType provider =
  //       HealthcareProviderType.values[data['providerType']];
  //   ConsultationType consultationType =
  //       ConsultationType.values[data['consultationType']];
  //   LocationType locationType = LocationType.values[data['locationType']];
  //   Gender gender = Gender.values[data['gender']];
  //   AgeGroup ageGroup = AgeGroup.values[data['ageGroup']];
  //   Treatments treatments = Treatments.values[data['treatments']];
  //   List<Value> values =
  // }
}
