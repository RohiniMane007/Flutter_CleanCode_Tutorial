// import 'package:counter/config/data/exceptions/app_exception.dart';

import 'package:flutter/material.dart';

import '../../config/components/components.dart';
import '../../config/routes/routes_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
                controller: TextEditingController(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(fillColor: Colors.white,filled: true,
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
                controller: TextEditingController(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RoundButton(
                  onPress: () {
                    Navigator.pushNamed(context, RoutesName.homeScreen);
                  },
                  
                  title: "Login"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.homeScreen);
                  },
                  
                  child: const Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
