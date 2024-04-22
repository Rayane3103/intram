import 'package:flutter/material.dart';
import 'package:myapp/Screens/Login_Page.dart';
import '../Components/customfield.dart';
import '../Constants/constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/Logo.png',
                      height: 170,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                  labelText: "FullName", prefixIcon: Icons.person),
              const SizedBox(height: 15),
              const CustomTextField(
                  labelText: "Phone Number", prefixIcon: Icons.phone),
              const SizedBox(height: 15),
              const CustomTextField(
                  labelText: "Email", prefixIcon: Icons.email),
              const SizedBox(height: 15),
              const CustomTextField(
                  labelText: "Password", prefixIcon: Icons.lock),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: const Size(double.infinity, 50),
                    elevation: 4),
                child: const Text(
                  'Sing Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?',
                      style: TextStyle(fontSize: 16)),
                  TextButton(
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: primaryColor, fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
