import 'package:calmly/features/details/details.dart';
import 'package:flutter/material.dart';

class MaleVoice extends StatelessWidget {
  const MaleVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return AudioCard(
          isActive: index == 0,
          title: '',
          time: '',
        );
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: 25,
    );
  }
}
