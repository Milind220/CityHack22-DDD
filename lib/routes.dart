import 'package:sampleapp/pages/about.dart';
import 'package:sampleapp/pages/home.dart';
import 'package:sampleapp/pages/land.dart';
import 'package:sampleapp/pages/login.dart';
import 'package:sampleapp/pages/signup.dart';
import 'package:sampleapp/pages/crisis.dart';
import 'package:sampleapp/pages/prefs.dart';
import 'package:sampleapp/pages/feed.dart';
import 'package:sampleapp/pages/docprofile.dart';
import 'package:sampleapp/pages/booking.dart';
import 'package:sampleapp/pages/viewall.dart';

var appRoutes = {
  '/': (context) => const LandPage(),
  '/about': (context) => const AboutScreen(),
  '/login': (context) => const LoginScreen(),
  '/signup': (context) => const SignupScreen(),
  '/crisis': (context) => const CrisisScreen(),
  '/prefs': (context) => const PreferenceScreen(),
  '/feed': (context) => const MainFeedScreen(),
  '/docprofile': (context) => const DocProfileScreen(),
  '/booking': (context) => const BookingScreen(),
  '/viewall': (context) => const ViewAllScreen(),
};
