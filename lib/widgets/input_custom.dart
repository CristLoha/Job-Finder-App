import 'package:flutter/material.dart';
import 'package:jobby_app/shared/theme.dart';

class InputCustom extends StatelessWidget {
  final String icon;
  final String hintTitle;
  final bool obscureText;
  const InputCustom({
    Key? key,
    required this.icon,
    required this.hintTitle,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      height: 64,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 19,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kGreyColor,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 26,
            ),
            SizedBox(
              width: 18,
            ),
            Expanded(
              child: TextFormField(
                obscureText: obscureText,
                decoration: InputDecoration.collapsed(
                  hintText: hintTitle,
                  hintStyle: greyTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
