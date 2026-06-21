// core/widgets/app_empty_state.dart
import 'package:flutter/material.dart';

import '../constants/strings.dart';

class AppEmptyState extends StatelessWidget {
  final String message;
  final Widget? icon;

  const AppEmptyState({
    super.key,
    this.message = AppStrings.emptyData,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon ??
              Icon(Icons.inbox_outlined, size: 64, color: Colors.grey.shade400),
          const SizedBox(height: 12),
          Text(message, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
