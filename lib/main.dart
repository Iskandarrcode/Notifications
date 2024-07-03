import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notification/views/home_screen.dart';
import 'package:notification/services/local_notificarions_services.dart';
import 'package:notification/views/pamidor_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotificarionsServices.requestPermission();
  await LocalNotificarionsServices.start();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: const [
          HomeScreen(),
          PamidorScreen(),
        ],
      ),
    );
  }
}
