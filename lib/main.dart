import 'package:flutter/material.dart';
import 'Screens/Main Screens/Splash.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Lock orientation to portrait only
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown, 
  ]);

  runApp(const GemAI());
}

class GemAI extends StatelessWidget {
  const GemAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GemAI',
      home: const SplashScreen(),
    );
  }
}
