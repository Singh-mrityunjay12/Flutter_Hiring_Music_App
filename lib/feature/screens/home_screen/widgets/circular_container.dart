import 'package:flutter/cupertino.dart';

import '../../../../utils/constant/image_string.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(MImage.darkAppLogo)),
    );
  }
}
