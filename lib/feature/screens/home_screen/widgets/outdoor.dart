import 'package:assign/utils/constant/colors.dart';
import 'package:flutter/cupertino.dart';

class Outdoor extends StatelessWidget {
  const Outdoor({super.key, required this.isOutdoor, this.width});
  final bool isOutdoor;
  // ignore: prefer_typing_uninitialized_variables
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: MColors.newColor1),
          borderRadius: BorderRadius.circular(20)),
      child: isOutdoor
          ? const Text(
              "Outdoor",
              style: TextStyle(color: MColors.newColor1),
            )
          : const Text(
              "+1",
              style: TextStyle(fontSize: 16, color: MColors.newColor1),
            ),
    );
  }
}
