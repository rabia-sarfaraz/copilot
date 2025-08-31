import 'package:flutter/material.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Back Arrow
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(height: 20),

            // Heading
            const Center(
              child: Text(
                "Are you a man or a woman?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const Spacer(),

            // Row with 2 images
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/man.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "I am a man",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 40), // spacing between two images
                Column(
                  children: [
                    Image.asset(
                      "assets/images/woman.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "I am a woman",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
