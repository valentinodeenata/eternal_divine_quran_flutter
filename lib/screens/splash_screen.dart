import 'package:eternal_divine_quran/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30), 
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text(
                'Holy Quran',
                  style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
                ),

                const SizedBox(height: 16),

                Text('Everlasting Divine Guidance \n from the Heavens',
                  style: GoogleFonts.poppins(
                  color: text,
                  fontSize: 18),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 48),
                
                ]),
          ),
          ),
      ),
    );
  }
}