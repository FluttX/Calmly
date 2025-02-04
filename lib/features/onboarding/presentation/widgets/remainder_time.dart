import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';

class RemainderTime extends StatelessWidget {
  const RemainderTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: context.colors.containerSurface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (DateTime value) {},
      ),
    );
  }
}
