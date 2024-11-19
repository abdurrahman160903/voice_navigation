import 'package:flutter/material.dart';

class CustomListTIle extends StatelessWidget {
  const CustomListTIle({
    super.key,
    this.leadingIcon,
    this.trailingIcon,
    required this.title,
    this.onTap,
  });

  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingIcon,
      trailing: trailingIcon,
      tileColor: Colors.transparent,
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      shape: null,
      onTap: onTap,
    );
  }
}
