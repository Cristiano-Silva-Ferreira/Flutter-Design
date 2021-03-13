import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  final double width;
  final double height;
  final Function onPressed;
  final Text text;
  final FaIcon icon;

  const SocialButton({
    Key key,
    this.width,
    this.height,
    this.onPressed,
    this.text,
    this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.white.withOpacity(0.9),
              Colors.white,
            ],
          ),
          border: Border.all(
            width: 1,
            color: Colors.red,
          )),
      child: MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              text,
              icon,
            ],
          ),
        ),
        onPressed: this.onPressed,
      ),
    );
  }
}
