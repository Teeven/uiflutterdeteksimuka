import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckYourEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(28, 92, 30, 222),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(4.6, 0, 0, 7),
              child: Text(
                'Check Emailmu',
                style: GoogleFonts.getFont(
                  'DM Sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xFF0D0140),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.2, 0, 2.2, 50),
              child: Text(
                'Kami telah mengirimkan reset password ke alamat email brandonelouis@gmial.com',
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
              margin: EdgeInsets.fromLTRB(2, 0, 0, 94),
              child: SizedBox(
                width: 125,
                height: 109,
                child: SvgPicture.asset(
                  'assets/vectors/undraw_message_sent_re_q_2_kl_1_x2.svg',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
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
                padding: EdgeInsets.fromLTRB(0, 17, 0.9, 15),
                child: Text(
                  'OPEN YOUR EMAIL',
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
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD6CDFE),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 17, 10.8, 15),
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
            Container(
              margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.getFont(
                    'Open Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 1.6,
                    color: Color(0xFF150B3D),
                  ),
                  children: [
                    TextSpan(
                      text: 'You have not received the email?  ',
                      style: GoogleFonts.getFont(
                        'DM Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'Resend',
                      style: GoogleFonts.getFont(
                        'DM Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        height: 1.3,
                        color: Color(0xFFFF9228),
                        decorationColor: Color(0xFFFF9228),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}