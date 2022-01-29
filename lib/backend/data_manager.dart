import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:sampleapp/backend/login_manager.dart';

class DataManager {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addUser(
    String name,
    bool hasProfile,
    List<int>? recommendationProfile,
  ) async {
    var user = LoginManager.instance.user!;
    CollectionReference users = _db.collection('users');

    await _db
        .collection('users')
        .doc(user.uid)
        .set({
          'name': name,
          'has_profile': hasProfile,
          'recommendation_profile': recommendationProfile,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Future<void> updateUserProfile(
    List<int>? recommendationProfile,
  ) async {
    var user = LoginManager.instance.user!;
    var ref = _db.collection('users').doc(user.uid);

    var data = {
      'has_profile': true,
      'recommendation_profile': recommendationProfile
    };

    return ref.set(data, SetOptions(merge: true));
  }
}
