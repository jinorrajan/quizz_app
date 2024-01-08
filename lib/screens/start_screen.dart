import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knoweldge_quizz/screens/home_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF233142), Color(0xFF384B62)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ClipOval(
              child: Container(
                width: 250,
                height: 250,
                color: Colors.blue,
                child: Image.asset(
                  "assets/images/main.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: 140,
            height: 50,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              label: Text(
                'Start',
                style: GoogleFonts.roboto(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff82A3C6),
                foregroundColor: const Color(0xFF233142),
              ),
            ),
          )
        ],
      ),
    );
  }
}
