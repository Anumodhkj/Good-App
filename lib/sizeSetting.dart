import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class S {
  static double maxH;
  static double maxW;
  static double _blockWidth;
  static double _blockHeight;
  static double height;
  static double width;

  void init(BoxConstraints constraints) {
    maxH = constraints.maxHeight;
    maxW = constraints.maxWidth;

    _blockWidth = maxW / 100;
    _blockHeight = maxH / 100;

    height = _blockHeight;
    width = _blockWidth;

    print("Block Width $_blockWidth");
    print("Block height $_blockHeight");
  }
}
