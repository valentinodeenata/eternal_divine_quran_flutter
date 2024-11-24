import 'package:eternal_divine_quran/globals.dart';
import 'package:eternal_divine_quran/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

                Stack(
                  clipBehavior: Clip.none,
                  children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF141315)),
                    child: SvgPicture.asset('assets/svg/splash.svg'), 
                  ),

                  Positioned(
                    left: 0,
                    bottom: -23,
                    right: 0,
                    child: Center(
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomeScreen(),));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 16),
                            decoration: BoxDecoration(color: orange, borderRadius: BorderRadius.circular(30)),
                          child: Text('Open',
                            style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                            ),
                            textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  )
                ],
                )
                ]),
          ),
          ),
      ),
    );
  }
}