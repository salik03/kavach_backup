import 'package:flutter/material.dart';
import 'package:kavach/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
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
      home: const OnBoardingScreen(),
    );
  }
}


class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
          title: const Text("Kavach"),
          leading: const Icon(Icons.ondemand_video)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.mail),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Kavach", style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Spam Alert", style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "India's first AI powered Spam Alert system", style: Theme.of(context).textTheme.bodyText1,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage("assets/images/logo.png")),
            ),
          ],
        ),
      ),
    );
  }
}