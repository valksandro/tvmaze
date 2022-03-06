import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchInputDecorator extends InputDecoration {
  SearchInputDecorator()
      : super(
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 15, right: 10),
              child: Icon(Icons.search, color: Colors.white),
            ),
            hintText: 'Search your serie',
            hintStyle: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.white38,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Colors.white30,
              ),
              borderRadius: BorderRadius.circular(35),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.white38),
              borderRadius: BorderRadius.circular(35),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.white38),
              borderRadius: BorderRadius.circular(35),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.white38),
              borderRadius: BorderRadius.circular(35),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.white38),
              borderRadius: BorderRadius.circular(35),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.white38),
              borderRadius: BorderRadius.circular(35),
            ));
}
