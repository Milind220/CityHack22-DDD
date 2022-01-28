import 'package:sampleapp/about/about.dart';
import 'package:sampleapp/home/home.dart';
import 'package:sampleapp/login/login.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/about': (context) => const AboutScreen(),
  '/login': (context) => const LoginScreen(),
};
