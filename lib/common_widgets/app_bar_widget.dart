import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {super.key,
      this.leadingIcon,
      required this.text,
      this.actionIcon,
      this.leadingOnPressed,
      this.showBackButton = true});

  final IconData? leadingIcon;
  final List<Widget>? actionIcon;
  final Widget text;
  final VoidCallback? leadingOnPressed;
  final bool showBackButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackButton
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: text,
        actions: actionIcon,
      ),
    );
  }
}
