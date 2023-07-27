import 'package:flutter/material.dart';

extension SizedBoxGeneratoredByNum on num {
  Widget get w => SizedBox(
        width: toDouble(),
      );

  Widget get h => SizedBox(
        height: toDouble(),
      );
}
