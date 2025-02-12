import 'package:calmly/features/details/details.dart';
import 'package:calmly/features/details/domain/entities/audio_data.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';

class AudioVoice extends StatelessWidget {
  const AudioVoice({required this.audios, super.key});

  final List<AudioData> audios;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final audio = audios[index];
        return AudioCard(
          isActive: index == 0,
          title: audio.title,
          time: context.tr.minCount(audio.duration),
          onTap: () {},
        );
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: audios.length,
    );
  }
}
