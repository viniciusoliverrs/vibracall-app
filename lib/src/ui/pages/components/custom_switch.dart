// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  const CustomSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 3,
      child: Switch(
        value: value,
        onChanged: onChanged,
        activeTrackColor: Colors.green,
        activeColor: Colors.pinkAccent,
      ),
    );
  }
}
