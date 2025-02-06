import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    required this.isFavorite,
    this.onFavoritePressed,
    this.onDownloadPressed,
    super.key,
  });

  final ValueListenable<bool> isFavorite;
  final void Function()? onFavoritePressed;
  final void Function()? onDownloadPressed;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      leading: Row(
        children: [
          const SizedBox(width: 15),
          RoundedIconButton(
            icon: AppIcons.icBack,
            onPressed: () => context.pop(),
          ),
        ],
      ),
      leadingWidth: 100,
      actions: [
        ValueListenableBuilder(
          valueListenable: isFavorite,
          builder: (context, favorite, child) {
            return RoundedIconButton(
              icon: favorite ? AppIcons.icFavoriteFilled : AppIcons.icFavorite,
              color: context.colors.iconBackground,
              onPressed: onFavoritePressed,
            );
          },
        ),
        const SizedBox(width: 15),
        RoundedIconButton(
          icon: AppIcons.icDownload,
          color: context.colors.iconBackground,
          onPressed: onDownloadPressed,
        ),
        const SizedBox(width: 20),
      ],
      toolbarHeight: kToolbarHeight + 20,
      expandedHeight: context.width * 0.6,
      flexibleSpace: FlexibleSpaceBar(
        background: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
          child: SvgPicture.asset(AppImages.topBG, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
