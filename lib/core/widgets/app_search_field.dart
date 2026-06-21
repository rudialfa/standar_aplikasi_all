// core/widgets/app_search_field.dart
import 'package:flutter/material.dart';

class AppSearchField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onFilterTap;

  const AppSearchField({
    super.key,
    this.hintText = 'Cari...',
    this.controller,
    this.onChanged,
    this.onFilterTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.search),
        suffixIcon: onFilterTap == null
            ? null
            : IconButton(onPressed: onFilterTap, icon: const Icon(Icons.tune)),
      ),
    );
  }
}
