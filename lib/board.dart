import 'package:fitcrew/text.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget notif() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
        borderRadius: BorderRadius.circular(15.0),
      ),
      width: 530,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          script("Wanna Coached..?"),
          TextField(
            onChanged: (value) {

            },
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(),
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: 'Name'),
          ),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {

            },
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(),
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: 'Age'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: script('Connect With Me '),
          ),
        ],
      ),
    ),
  );
}
