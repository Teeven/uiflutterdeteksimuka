import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 94, 29, 182),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(12.2, 0, 0, 7),
              child: Text(
                'Lupa Password?',
                style: GoogleFonts.getFont(
                  'DM Sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xFF0D0140),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 5, 33),
              child: Text(
                'Untuk mengatur ulang kata sandi Anda, Anda memerlukan email atau nomor ponsel Anda yang dapat diautentikasi',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'DM Sans',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.6,
                  color: Color(0xFF524B6B),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8.2, 0, 0, 72.2),
              child: SizedBox(
                width: 118.2,
                height: 93.8,
                child: SvgPicture.asset(
                  'assets/vectors/group_67_x2.svg',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xFF150B3D),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(9, 0, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x2E99ABC6),
                          offset: Offset(0, 4),
                          blurRadius: 31,
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(16, 17, 16, 17),
                      child: Text(
                        'Brandonelouis@gmail.com ',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0x990D0140),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(9, 0, 0, 29),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF130160),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x2E99ABC6),
                    offset: Offset(0, 4),
                    blurRadius: 31,
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 17, 1, 15),
                child: Text(
                  'RESET PASSWORD',
                  style: GoogleFonts.getFont(
                    'DM Sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    letterSpacing: 0.8,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(9, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD6CDFE),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 16, 6.8, 16),
                  child: Text(
                    'BACK TO LOGIN',
                    style: GoogleFonts.getFont(
                      'DM Sans',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      letterSpacing: 0.8,
                      color: Color(0xFFFFFFFF),
                    ),
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