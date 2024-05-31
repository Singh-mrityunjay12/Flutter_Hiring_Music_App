import 'package:assign/common/appbar/appbar.dart';
import 'package:assign/data/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/image_string.dart';
import '../../../utils/constant/sizes.dart';
import '../home_screen/widgets/list_tile_card.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeScreenController.instance;
    return Scaffold(
      appBar: MAppBar(
        color: MColors.newColor,
        showBackArrow: true,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 21,
              backgroundImage: AssetImage(MImage.darkAppLogo),
            ),
            SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Weeknd",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: MColors.white),
                ),
                Text(
                  "Community • +11K Members",
                  style: TextStyle(fontSize: 16, color: MColors.white),
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                controller.showBottomSheet();
              },
              icon: const Icon(
                Icons.more_vert,
                color: MColors.white,
                size: 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        padding:
                            const EdgeInsets.symmetric(horizontal: MSizes.sMin),
                        decoration: BoxDecoration(
                            color: MColors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: MColors.grey)),
                        child: Form(
                          key: controller.searchFormKey,
                          child: TextFormField(
                            controller: controller.searchText,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: MColors.white,
                                hintText: 'Search Member',
                                hintStyle: TextStyle(color: MColors.newColor3)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Container(
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ))
                  ],
                ),
              ),
              const ListTileCard(
                text1: 'Following',
                text2: 'Add',
                color: MColors.newColor2,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              ),
              const ListTileCard(
                text1: "Add",
                text2: "Add",
                color: MColors.newColor1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
