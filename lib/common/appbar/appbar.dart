import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/device/device_utility.dart';

class MAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MAppBar(
      {super.key,
      this.title,
      this.actions,
      this.leadingIcon,
      this.leadingOnPressed,
      this.color,
      this.showBackArrow = false});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppBar(
        backgroundColor: color,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? Center(
                child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Iconsax.arrow_left,
                      color: Colors.white,
                    )),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MDeviceUtils.getAppBarHeight());
}
