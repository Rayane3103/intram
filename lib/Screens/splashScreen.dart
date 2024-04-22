import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image.asset('assets/Logo.png'),
              ),
          
            const Text('By inTram Team'),
            const Text('Djilali Liabes University'),
            const SizedBox(height: 70,)
          ],
        );
  }
}
