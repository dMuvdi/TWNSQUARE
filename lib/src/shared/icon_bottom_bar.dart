import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBottomBar extends StatelessWidget {
  final String text;
  final String iconAsset;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar({
    super.key,
    required this.text,
    required this.iconAsset,
    required this.selected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.transparent,
        width: 50,
        height: 30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 27,
              height: 27,
              // Pending selected bottom bar icon logic
              child: SvgPicture.asset(
                iconAsset,
                color: selected ? Colors.black : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
