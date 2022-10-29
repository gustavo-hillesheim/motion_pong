import 'package:flutter/material.dart';
import 'package:pong/src/widgets/field_divider.dart';

class PongField extends StatelessWidget {
  const PongField({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            width: 8,
            color: Colors.white,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: FieldDivider(),
      ),
    );
  }
}
