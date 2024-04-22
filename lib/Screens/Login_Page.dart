import 'package:flutter/material.dart';
import 'package:myapp/Components/customfield.dart';
import 'package:myapp/Constants/constants.dart';
import 'package:myapp/Screens/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            // Wrap ListView with SingleChildScrollView
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Logo.png',
                    height: 200,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const CustomTextField(
                      labelText: "Email", prefixIcon: Icons.email),
                  const SizedBox(height: 20),
                  const CustomTextField(
                      labelText: "Password", prefixIcon: Icons.lock),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/main');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        minimumSize: const Size(double.infinity, 50),
                        elevation: 4),
                    child: const Text(
                      'Sing In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('New here?', style: TextStyle(fontSize: 16)),
                      TextButton(
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: primaryColor, fontSize: 16),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
