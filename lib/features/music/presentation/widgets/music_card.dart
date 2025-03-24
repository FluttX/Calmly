import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/music/domain/entities/music_data.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({required this.music, super.key});

  final MusicData music;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SvgPicture.asset(
              music.image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          music.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colors.tertiaryColor,
          ),
        ),
        const SizedBox(height: 2),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.tr.minCount(music.time),
              style: context.textTheme.bodySmall
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Icon(
                Icons.circle,
                size: 4,
                color: context.colors.textSecondary,
              ),
            ),
            Text(
              music.type,
              style: context.textTheme.bodySmall
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
