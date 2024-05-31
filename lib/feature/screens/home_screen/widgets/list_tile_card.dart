import 'package:assign/data/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/image_string.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard(
      {super.key,
      required this.text1,
      required this.text2,
      required this.color});
  final String text1;
  final String text2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    return Container(
        child: ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(MImage.userLogo),
      ),
      title:
          // Text("hhhjjj"),
          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Yashika",
            style: TextStyle(
                color: MColors.newColor4,
                fontWeight: FontWeight.w600,
                fontSize: 17),
          ),
          Text(
            "29,India",
            style: TextStyle(color: MColors.newColor3),
          )
        ],
      ),
      trailing: Obx(() => TextButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: controller.isActive.value ? color : MColors.newColor1),
              child: controller.isActive.value
                  ? Text(text1,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                  : Text(text2,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ),
            onPressed: () {
              controller.isActive.value = !controller.isActive.value;
              bool is1 = controller.isActive.value;
              controller.isToggle(is1);
              print(is1);
            },
          )),
    ));
  }
}
