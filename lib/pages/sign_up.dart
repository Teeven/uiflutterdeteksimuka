import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(29, 100, 28, 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(7.4, 0, 0, 115),
              child: Text(
                'Buat Akunmu',
                style: GoogleFonts.getFont(
                  'DM Sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xFF0D0140),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 1, 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Full name',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xFF0D0140),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                      padding: EdgeInsets.fromLTRB(25, 17, 25, 17),
                      child: Text(
                        'Brandone Louis ',
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
              margin: EdgeInsets.fromLTRB(1, 0, 0, 15),
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
                          color: Color(0xFF0D0140),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                      padding: EdgeInsets.fromLTRB(15, 17, 15, 17),
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
              margin: EdgeInsets.fromLTRB(1, 0, 0, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password',
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                      padding: EdgeInsets.fromLTRB(25, 13, 22, 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 9),
                            child: SizedBox(
                              width: 104,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x990D0140),
                                        borderRadius: BorderRadius.circular(2.5),
                                      ),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x990D0140),
                                        borderRadius: BorderRadius.circular(2.5),
                                      ),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x990D0140),
                                        borderRadius: BorderRadius.circular(2.5),
                                      ),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x990D0140),
                                        borderRadius: BorderRadius.circular(2.5),
                                      ),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x990D0140),
                                        borderRadius: BorderRadius.circular(2.5),
                                      ),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x990D0140),
                                        borderRadius: BorderRadius.circular(2.5),
                                      ),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x990D0140),
                                        borderRadius: BorderRadius.circular(2.5),
                                      ),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x990D0140),
                                        borderRadius: BorderRadius.circular(2.5),
                                      ),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x990D0140),
                                        borderRadius: BorderRadius.circular(2.5),
                                      ),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0x990D0140),
                                      borderRadius: BorderRadius.circular(2.5),
                                    ),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset(
                              'assets/vectors/icon_eye_1_x2.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 2.9, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFE6E1FF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x2E99ABC6),
                              offset: Offset(0, 4),
                              blurRadius: 31,
                            ),
                          ],
                        ),
                        child: Container(
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                        child: Text(
                          'Remember me',
                          style: GoogleFonts.getFont(
                            'DM Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFFAAA6B9),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                    child: Text(
                      'Forgot Password ?',
                      style: GoogleFonts.getFont(
                        'DM Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF0D0140),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 2, 81),
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
                width: 266,
                padding: EdgeInsets.fromLTRB(0, 17, 5.8, 15),
                child: Text(
                  'SIGN UP',
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
              margin: EdgeInsets.fromLTRB(0, 0, 2.9, 0),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.getFont(
                    'Open Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF524B6B),
                  ),
                  children: [
                    TextSpan(
                      text: 'You dont have an account yet?  ',
                      style: GoogleFonts.getFont(
                        'DM Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign in',
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