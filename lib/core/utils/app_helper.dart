import 'dart:io';

import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class AppHelper {
  static Future<bool> showAlertDialog({
    required BuildContext context,
    required String title,
    required String content,
  }) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) {
            if (Platform.isIOS) {
              return CupertinoAlertDialog(
                title: Text(title),
                content: Text(content),
                actions: [
                  CupertinoDialogAction(
                    onPressed: () => context.pop(false),
                    child: Text(context.tr.no),
                  ),
                  CupertinoDialogAction(
                    onPressed: SystemNavigator.pop,
                    isDestructiveAction: true,
                    child: Text(context.tr.yes),
                  ),
                ],
              );
            } else {
              return AlertDialog(
                title: Text(title),
                content: Text(content),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(false),
                    child: Text(context.tr.no),
                  ),
                  TextButton(
                    onPressed: SystemNavigator.pop,
                    child: Text(context.tr.yes),
                  ),
                ],
              );
            }
          },
        ) ??
        false;
  }
}
