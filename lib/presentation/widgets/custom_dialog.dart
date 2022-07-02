import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    this.content = const [],
  });

  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1000),
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: content,
              ),
            ),
          ),
          IconButton(
            onPressed: context.popRoute,
            icon: const Icon(Icons.close, size: 24),
          ),
        ],
      ),
    );
  }
}
