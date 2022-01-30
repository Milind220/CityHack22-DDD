import 'dart:async';
import 'package:sampleapp/backend/healthcare_provider.dart';
import 'package:sampleapp/backend/question.dart';
import 'package:sampleapp/backend/recommendation_profile.dart';
import 'package:sampleapp/backend/user.dart';
import 'package:sampleapp/utils/data.dart';

class DataManager {
  static final DataManager _instance = DataManager._privateConstructor();
  static DataManager get instance => _instance;

  DataManager._privateConstructor();

  Future<void> addUser(
    String name,
    String uid,
  ) async {
    // var _db = FirebaseFirestore.instance;
    // var userDoc = _db.collection('users').doc(uid);
    // userDoc.set({
    //   'name': name,
    //   'hasProfile': false,
    // }).catchError((error) => print(error.toString()));
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
    // if (user.profile == null) return;
    // var _db = FirebaseFirestore.instance;

    // var ref = _db.collection('users').doc(user.userId);

    // var data = _profileToMap(user.profile!);

    // return ref.set(data, SetOptions(merge: true));
  }

  // Read user data from fires
  List<HealthcareProvider> getAllDoctors() {
    // var ref = _db.collection('providers');
    // var snapshot = await ref.get();
    // var data = snapshot.docs.map((s) => s.data()).toList();
    var response = providers;
    List<HealthcareProvider> doctors = [];

    for (var i = 0; i < response.length; i++) {
      Map<String, dynamic> d = response[i];
      String name = d['name'];
      String address = d['address'];
      HealthcareProviderType provider =
          HealthcareProviderType.values[d['providerType']];
      ConsultationType consultationType =
          ConsultationType.values[d['consultationType']];
      LocationType locationType = LocationType.values[d['location']];
      Gender gender = Gender.values[d['gender']];
      AgeGroup ageGroup = AgeGroup.values[d['ageGroup']];
      Treatments treatments = Treatments.values[d['treatments']];

      List<Value> values = [];
      List<int> valueMaps = d['values'];
      for (var value in valueMaps) {
        values.add(Value.values[value]);
      }

      List<Question> questions = [];
      List<Map<String, String>> questionMaps = d['questions'];
      for (var i = 0; i < questionMaps.length; i++) {
        questions.add(
            Question(questionMaps[i]['question']!, questionMaps[i]['answer']!));
      }

      var profile = RecommendationProfile(provider, consultationType,
          locationType, gender, ageGroup, treatments, values);

      doctors.add(HealthcareProvider(name, address, profile, questions));
    }

    return doctors;
  }

  // Retrieves a single quiz document
  User getUserData() {
    // var user = LoginManager.instance.user!;
    // var ref = _db.collection('users').doc(user.uid);
    // var snapshot = await ref.get();
    // var data = snapshot.data();

    Map<String, dynamic> data = {
      'name': 'Steve Wall',
      'userId': 'lsdkfjlke342',
      'address': '7 Nathan Road, Yau Ma Tei',
      'providerType': 0,
      'consultationType': 1,
      'location': 1,
      'gender': 0,
      'ageGroup': 1,
      'treatments': 2,
      'values': [0, 2, 1, 7]
    };

    String name = data['name'];
    String userId = data['userId'];
    HealthcareProviderType provider =
        HealthcareProviderType.values[data['providerType']];
    ConsultationType consultationType =
        ConsultationType.values[data['consultationType']];
    LocationType locationType = LocationType.values[data['location']];
    Gender gender = Gender.values[data['gender']];
    AgeGroup ageGroup = AgeGroup.values[data['ageGroup']];
    Treatments treatments = Treatments.values[data['treatments']];

    List<Value> values = [];
    List<int> valueMaps = data['values'];
    for (var value in valueMaps) {
      values.add(Value.values[value]);
    }

    var profile = RecommendationProfile(provider, consultationType,
        locationType, gender, ageGroup, treatments, values);

    return User(name, userId, profile);
  }
}
