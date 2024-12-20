import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  final String mainLabel;
  final String subLabel;
  const RowText({
    Key? key,
    this.mainLabel = "",
    this.subLabel = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: const TextStyle(
              fontFamily: "Poppins"
          ),
          children: [
            TextSpan(
                text: mainLabel,
                style: Theme.of(context).textTheme.titleSmall
            ),

            TextSpan(
                text: subLabel,
                style: Theme.of(context).textTheme.labelMedium
            ),
          ]
      ),
    );
  }
}
