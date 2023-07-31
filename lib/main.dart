import 'package:flutter/material.dart';
import 'package:kavach/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:kavach/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:kavach/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:kavach/src/utils/theme/theme.dart';

void main() => runApp(const App());


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const WelcomeScreen(),
    );
  }
}


