import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:sampleapp/backend/login_manager.dart';

class DataManager {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addUser(
    String name,
    bool hasProfile,
    List<dynamic> recommendationProfile,
  ) async {
    var user = LoginManager.instance.user!;
    CollectionReference users = _db.collection('users');
    if (hasProfile) {
      await _db
          .collection('users')
          .doc(user.uid)
          .set({
            'name': name,
            'has_profile': hasProfile,
            'recommendation_profile':
                FieldValue.arrayUnion(recommendationProfile),
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    } else {
      await _db
          .collection('users')
          .doc(user.uid)
          .set({
            'name': name,
            'has_profile': hasProfile, // Doesn't set recommendation profile
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }
  }

  Future<void> updateUserProfile(
    List<dynamic> recommendationProfile,
  ) async {
    var user = LoginManager.instance.user!;
    var ref = _db.collection('users').doc(user.uid);

    var data = {
      'has_profile': true,
      'recommendation_profile': FieldValue.arrayUnion(recommendationProfile),
    };

    return ref.set(data, SetOptions(merge: true));
  }
}
