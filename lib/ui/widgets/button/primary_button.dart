import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPress;
  final Color borderColor;
  final String label;
  final double width;
  final double height;
  final Color buttonColor;
  final Color labelColor;

  const PrimaryButton({
    Key key,
    @required this.onPress,
    this.borderColor = Colors.red,
    this.label = '',
    this.width = 250.0,
    this.height = 40.0,
    this.buttonColor = Colors.white,
    this.labelColor = Colors.purple,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: labelColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
