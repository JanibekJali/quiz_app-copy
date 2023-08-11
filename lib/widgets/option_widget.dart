import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({
    Key? key,
    required this.option,
    required this.color,
    // required this.onTap,
    // required this.isSelected,
  }) : super(key: key);
  final String option;
  final Color color;
  // final Function()? onTap;
  // final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Center(
          child: Text(option),
        ),
      ),
    );
  }
}
