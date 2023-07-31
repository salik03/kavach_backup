import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


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
              child: Image(image: AssetImage(logo)),
            ),
          ],
        ),
      ),
    );
  }
}