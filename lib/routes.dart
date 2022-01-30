import 'package:sampleapp/pages/about.dart';
import 'package:sampleapp/pages/home.dart';
import 'package:sampleapp/pages/landing_page.dart';
import 'package:sampleapp/pages/login.dart';
import 'package:sampleapp/pages/signup.dart';
import 'package:sampleapp/pages/crisis.dart';
import 'package:sampleapp/pages/preferences.dart';
import 'package:sampleapp/pages/main_feed.dart';
import 'package:sampleapp/pages/doctor_profile.dart';
import 'package:sampleapp/pages/booking.dart';
import 'package:sampleapp/pages/view_all.dart';
//import 'package:sampleapp/pages/login.dart';

var appRoutes = {
  '/': (context) => const LandPage(),
  '/about': (context) => const AboutScreen(),
  '/login': (context) => const LoginScreen(),
  '/signup': (context) => const SignupScreen(),
  '/crisis': (context) => const CrisisScreen(),
  '/prefs': (context) => PreferenceScreen(),
  '/feed': (context) => const MainFeedScreen(),
  '/docprofile': (context) => const DocProfileScreen(),
  '/booking': (context) => const BookingScreen(),
  '/viewall': (context) => const ViewAllScreen(),
};
