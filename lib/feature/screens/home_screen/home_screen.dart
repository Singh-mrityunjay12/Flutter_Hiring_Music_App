import 'package:assign/common/appbar/appbar.dart';
import 'package:assign/data/controller/home_controller.dart';
import 'package:assign/feature/screens/home_screen/widgets/add_card.dart';
import 'package:assign/feature/screens/home_screen/widgets/list_tile_card.dart';
import 'package:assign/feature/screens/user_screen/user_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/image_string.dart';
import 'widgets/circular_container.dart';
import 'widgets/outdoor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeScreenController.instance;
    bool isActive = false;
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
                  style: TextStyle(fontSize: 16, color: MColors.white
                      // fontWeight: FontWeight.w600,
                      ),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 231,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                MImage.lightAppLogo,
                              ))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    // height: 40,
                    top: 2,
                    left: 4,
                    // right: 350,
                    child: Container(
                      height: 38,
                      width: 37,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: MAppBar(
                          showBackArrow: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                // height: 89,
                decoration: const BoxDecoration(color: MColors.newColor),
                padding: const EdgeInsets.only(
                    left: 15, top: 20, right: 15, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The Weeknd",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: MColors.white),
                        ),
                        Text(
                          "Community • +11K Members",
                          style: TextStyle(fontSize: 18, color: MColors.white
                              // fontWeight: FontWeight.w600,
                              ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: MColors.white)),
                      child: const Icon(
                        Icons.share,
                        size: 20,
                        color: MColors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  children: [
                    const ReadMoreText(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame...",
                      trimLines: 4,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Read more',
                      trimExpandedText: ' Less',
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Outdoor(
                          isOutdoor: true,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Outdoor(
                          isOutdoor: true,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Outdoor(
                          isOutdoor: true,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Outdoor(
                          isOutdoor: true,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Outdoor(
                          isOutdoor: false,
                          width: 44,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 41,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Media, docs and links",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Row(
                          children: [
                            CircularContainer(),
                            SizedBox(
                              width: 10,
                            ),
                            CircularContainer(),
                            SizedBox(
                              width: 10,
                            ),
                            CircularContainer(),
                            SizedBox(
                              width: 10,
                            ),
                            CircularContainer(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Mute notification",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Switch(value: isActive, onChanged: (value) {})
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Column(
                        children: [
                          AddCard(
                            icon: Iconsax.trash,
                            text: "Clear Data",
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AddCard(
                            icon: Iconsax.lock,
                            text: "Encryption",
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AddCard(
                            icon: Iconsax.logout,
                            text: "Exit community",
                            color: MColors.newColor1,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AddCard(
                            icon: Iconsax.dislike,
                            text: "Report",
                            color: MColors.newColor1,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 41,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Members",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Container(
                              height: 34,
                              width: 34,
                              decoration: BoxDecoration(
                                  color: MColors.newColor2,
                                  borderRadius: BorderRadius.circular(20)),
                              child: IconButton(
                                  onPressed: () {
                                    Get.to(() => const UserScreen());
                                  },
                                  icon: const Icon(
                                    Iconsax.search_normal_1,
                                    color: MColors.black,
                                    size: 20,
                                  ))),
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
