import 'package:flutter/material.dart';

class FieldDivider extends StatelessWidget {
  const FieldDivider({super.key});

  @override
  Widget build(BuildContext context) {
    const dashSize = 8.0;
    return SizedBox(
      width: dashSize,
      child: LayoutBuilder(
        builder: (_, constraints) {
          final height = constraints.maxHeight;
          final dashCount = height ~/ dashSize;
          final lastDashHeight = height - dashCount * dashSize;
          return ListView.separated(
            itemCount: (dashCount / 2).floor() + 1,
            itemBuilder: (_, i) {
              final isLast = i == dashCount;
              final dashHeight = isLast ? lastDashHeight : dashSize;
              return Container(
                width: dashSize,
                height: dashHeight,
                color: Colors.white,
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: dashSize),
          );
        },
      ),
    );
  }
}
