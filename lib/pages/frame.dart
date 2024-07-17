import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Frame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0.6, 0.1, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0.1,
              top: 0,
              child: SizedBox(
                width: 0.1,
                height: 0.1,
                child: SvgPicture.asset(
                  'assets/vectors/vector_2_x2.svg',
                ),
              ),
            ),
            Text(
              '10',
              style: GoogleFonts.getFont(
                'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF000000),
              ),
            ),
            Positioned(
              left: 0.1,
              top: 0.1,
              child: SizedBox(
                width: 0.1,
                height: 0.1,
                child: SvgPicture.asset(
                  'assets/vectors/vector_3_x2.svg',
                ),
              ),
            ),
            Positioned(
              right: -5.1,
              bottom: -29.1,
              child: SizedBox(
                height: 30,
                child: Text(
                  '20',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0.1,
              top: 0.2,
              child: SizedBox(
                width: 0.1,
                height: 0.1,
                child: SvgPicture.asset(
                  'assets/vectors/vector_1_x2.svg',
                ),
              ),
            ),
            Positioned(
              right: -5.2,
              bottom: -29.2,
              child: SizedBox(
                height: 30,
                child: Text(
                  '30',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0.1,
              top: 0.3,
              child: SizedBox(
                width: 0.1,
                height: 0.1,
                child: SvgPicture.asset(
                  'assets/vectors/vector_x2.svg',
                ),
              ),
            ),
            Positioned(
              right: -5.3,
              bottom: -29.3,
              child: SizedBox(
                height: 30,
                child: Text(
                  '40',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}