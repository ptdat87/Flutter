import 'package:flutter/material.dart';

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(width: 1.2, color: Colors.black12),
    color: Color.fromARGB(255, 240, 240, 240),
    borderRadius: const BorderRadius.all(const Radius.circular(5.0)
    )
  );
}