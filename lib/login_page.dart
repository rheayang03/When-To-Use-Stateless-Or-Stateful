import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key}); // ✅ key passed using super parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Let\'s sign you in!',
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 😎,
            const Text(
              'Welcome back!\nYou\'ve been missed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                      'https://3009709.youcanlearnit.net/Alien_LIL_131338.png'),
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
