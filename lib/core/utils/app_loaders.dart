import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AppLoaders {
  static void successSnackBar(BuildContext context, String message) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.success(
        message: message,
        textStyle: context.textTheme.labelMedium?.copyWith(
              color: context.colors.background,
              fontWeight: FontWeight.w500,
            ) ??
            TextStyle(
              fontSize: 12,
              color: context.colors.background,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  static void infoSnackBar(BuildContext context, String message) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.info(
        message: message,
        textStyle: context.textTheme.labelMedium?.copyWith(
              color: context.colors.background,
              fontWeight: FontWeight.w500,
            ) ??
            TextStyle(
              fontSize: 12,
              color: context.colors.background,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  static void errorSnackBar(BuildContext context, String message) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message: message,
        textStyle: context.textTheme.labelMedium?.copyWith(
              color: context.colors.background,
              fontWeight: FontWeight.w500,
            ) ??
            TextStyle(
              fontSize: 12,
              color: context.colors.background,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
