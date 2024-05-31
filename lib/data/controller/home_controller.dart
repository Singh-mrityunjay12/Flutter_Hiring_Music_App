import 'package:assign/utils/constant/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../feature/screens/home_screen/widgets/add_card.dart';
import '../../utils/constant/colors.dart';

class HomeScreenController extends GetxController {
  static HomeScreenController get instance => Get.find();

  final isActive = false.obs;

  void isToggle(bool isActive1) {
    isActive.value = isActive1;
    print('/////////////////////$isActive1');
    update();
  }

  TextEditingController searchText = TextEditingController();
  GlobalKey<FormState> searchFormKey = GlobalKey<FormState>();

  void showBottomSheet() {
    Get.bottomSheet(SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: MColors.white, borderRadius: BorderRadius.circular(20.0)),
        child: const Padding(
          padding: EdgeInsets.all(MSizes.spaceBtwSection),
          child: Column(
            children: [
              AddCard(
                icon: Iconsax.link_21,
                text: "Invite",
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              AddCard(
                icon: Iconsax.user_add,
                text: "Add member",
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              AddCard(
                icon: Iconsax.profile_2user4,
                text: "Add Group",
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
