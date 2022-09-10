import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget script(String data) {
  return Text(
    data,
    style: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      fontSize: 13,
      fontWeight: FontWeight.w600,
    ),
  );
}
