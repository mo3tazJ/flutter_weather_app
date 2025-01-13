import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Weather App"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "there is no weather 😔 start",
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            Text(
              "searching now 🔍",
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
