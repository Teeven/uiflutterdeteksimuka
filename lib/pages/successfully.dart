import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Successfully extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(29, 98, 29, 243),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(14.7, 0, 0, 6),
              child: Text(
                'Berhasil'
            ,
                style: GoogleFonts.getFont(
                  'DM Sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xFF0D0140),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 26),
              child: Text(
                'Kata sandi Anda telah diperbarui, harap ubah kata sandi Anda secara berkala untuk menghindari hal ini terjadi',
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
              margin: EdgeInsets.fromLTRB(0, 0, 0, 111),
              child: SizedBox(
                width: 139,
                height: 117,
                child: SvgPicture.asset(
                  'assets/vectors/undraw_message_sent_re_q_2_kl_11_x2.svg',
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
                padding: EdgeInsets.fromLTRB(0, 17, 5.5, 15),
                child: Text(
                  'CONTINUE',
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
              decoration: BoxDecoration(
                color: Color(0xFFD6CDFE),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 17, 4.8, 15),
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
          ],
        ),
      ),
    );
  }
}