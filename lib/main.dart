import 'package:flutter/material.dart';
import 'package:sampleapp/firebase_options.dart';
import 'package:sampleapp/routes.dart';

/// Hello Fellow Dinky Dongs
// Hello milind

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';

import 'backend/data_manager.dart';
import 'utils/dataStore.dart';
//hello im Mike
//Chamberlin is better than Mike

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future _initialization = Firebase.initializeApp(
    name: 'SampleApp',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              snapshot.error.toString(),
              textDirection: TextDirection.ltr,
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: appRoutes,
            initialRoute: '/',
          );
        }

        return const Center(
          child: Text(
            'loading',
            textDirection: TextDirection.ltr,
          ),
        );
      },
    );
  }
}
