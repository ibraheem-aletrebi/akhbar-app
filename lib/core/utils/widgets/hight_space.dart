import 'package:flutter/material.dart';

class HightSpace extends StatelessWidget {
  const HightSpace(this.hight, {super.key});
  final double hight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: hight);
  }
}
