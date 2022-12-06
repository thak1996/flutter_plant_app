import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/home/components/title_with_custom_underline.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.textButton,
    required this.onPressed,
    required this.textTitle,
  }) : super(key: key);

  final String textButton;
  final String textTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderline(text: textTitle),
          ElevatedButton(
            style: ButtonStyle(
              elevation: const MaterialStatePropertyAll<double>(0),
              backgroundColor: const MaterialStatePropertyAll<Color>(
                Colors.green,
              ),
              shape: MaterialStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              textButton,
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
