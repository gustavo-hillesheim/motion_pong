import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pong/src/widgets/field_divider.dart';

class PongField extends StatelessWidget {
  const PongField({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            width: 0.01.sh,
            color: Colors.white,
          ),
        ),
      ),
      child: const Align(
        alignment: Alignment.center,
        child: FieldDivider(),
      ),
    );
  }
}
