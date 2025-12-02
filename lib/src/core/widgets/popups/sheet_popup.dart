import 'package:bookeat/src/core/widgets/buttons/custom_app_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../extensions/build_context_extension.dart';
import '../padding/default_horizontal_padding.dart';
import 'base_popup.dart';

Future<T?> showSheetPopup<T>(
  BuildContext context, {
  Color? backgroundColor,
  Color? iconColor,
  Widget? title,
  required Widget Function(BuildContext) builder,
  bool useRootNavigator = true,
  EdgeInsets padding = DefaultHorizontalPadding.defaultPadding,
  bool showDragHandle = false,
}) {
  return showBasePopup<T>(
    context,
    showDragHandle: showDragHandle,
    useRootNavigator: useRootNavigator,
    useSafeArea: true,
    builder: (context) => DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor ?? context.colors.grey100,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 8),
              Container(
                width: 48,
                height: 4,
                decoration:
                    BoxDecoration(color: context.colors.lightSecondaryText, borderRadius: BorderRadius.circular(100)),
              ),
              // SizedBox(height: 20),
              if (title != null)
                Container(
                  decoration: BoxDecoration(
                    color: backgroundColor ?? context.colors.grey100,
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(padding.left, 16, padding.right, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DefaultTextStyle(
                          style: context.typography.nunitoSemiBold24.copyWith(color: context.colors.black),
                          child: title,
                        ),
                        CustomAppButton(
                          color: context.colors.white,
                          padding: 14,
                          aroundPadding: 0,
                          onTap: context.pop,
                          icon: Icon(
                            context.icons.close,
                            size: 20,
                            color: context.colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Flexible(
                child: Padding(padding: padding, child: builder(context)),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
