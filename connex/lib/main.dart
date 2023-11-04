import 'package:connex/global%20variables/colors.dart';
import 'package:connex/presentation/screens/chat/chatinterface/chat_interface.dart';
import 'package:connex/presentation/screens/profile/settings/settings_page.dart';
import 'package:connex/presentation/screens/rootpage/root_page.dart';
import 'package:connex/presentation/screens/home/widgets/home.dart';
import 'package:connex/presentation/screens/signup/signup.dart';
import 'package:connex/presentation/screens/splashscreen/splash_screen.dart';
import 'package:connex/presentation/screens/welcomescreen/main_welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connex',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: ConstantColors.kWhite),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcomescreen': (context) => const WelcomeScreen(),
        '/signup': (context) => const SignUp(),
        '/homemain': (context) => const HomeMain(),
        '/chatinterface': (context) => const ChatInterface(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
