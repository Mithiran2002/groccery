import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/screens/dashboard/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, Orientation, DeviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Basic Task',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SpalashScreen(),
      );
    });
  }
}
