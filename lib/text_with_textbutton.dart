import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TextWithTextButton extends StatelessWidget {

  final String? text, textButtonText;
  final onPressed;

  const TextWithTextButton({
    Key? key,
    @required this.text,
    @required this.textButtonText,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text!, style:  const TextStyle(color: Colors.white),),
        TextButton(
          child: Text(textButtonText!, style: const TextStyle(color: Colors.green),),
          onPressed: onPressed,
          style: ButtonStyle(
            overlayColor: MaterialStateColor.resolveWith((states) => Colors.grey),
          ),
        )
      ],
    );
  }
}
