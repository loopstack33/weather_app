import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/multi_provider.dart';
import 'package:weather_app/views/dashboard/screens/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: multiProvider,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme:const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            color: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle( //<-- SEE HERE
              // Status bar color
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
            ),
          ),
        ),
        home: const Dashboard(),
      ),
    );
  }
}
