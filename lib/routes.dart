import 'package:sampleapp/about/about.dart';
import 'package:sampleapp/home/home.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/about': (context) => const AboutScreen(),
};
