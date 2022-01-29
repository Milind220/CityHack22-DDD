import 'package:flutter/material.dart';

class LoginManager {
  static final LoginManager _instance = LoginManager._privateConstructor();

  static LoginManager get instance => _instance;

  LoginManager._privateConstructor() {
    //do constructor here
  }
}
