import 'package:sampleapp/pages/about.dart';
import 'package:sampleapp/pages/home.dart';
import 'package:sampleapp/pages/login.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/about': (context) => const AboutScreen(),
  '/login': (context) => const LoginScreen(),
};
