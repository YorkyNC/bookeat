import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/features/auth/presentation/components/custom_button.dart';
import 'package:bookeat/src/features/auth/presentation/components/custom_snack_bar.dart';
import 'package:flutter_svg/svg.dart';

class SiginOptionsWidget extends StatelessWidget {
  const SiginOptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Divider(
                  color: context.colors.textFieldBorderColor,
                  height: 36,
                ),
              ),
            ),
            Text("Или войдите с помощью"),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Divider(
                  color: context.colors.textFieldBorderColor,
                  height: 36,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              padding: 0,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  CustomSnackBar.show(
                    color: context.colors.brandColor,
                    title: 'Coming soon',
                    seconds: 3,
                    context: context,
                  ),
                );
              },
              child: SvgPicture.asset(context.assetImages.google),
            ),
            CustomButton(
              padding: 0,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  CustomSnackBar.show(
                    color: context.colors.brandColor,
                    title: 'Coming soon',
                    seconds: 3,
                    context: context,
                  ),
                );
              },
              child: SvgPicture.asset(context.assetImages.facebook),
            ),
            CustomButton(
              padding: 0,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  CustomSnackBar.show(
                    color: context.colors.brandColor,
                    title: 'Coming soon',
                    seconds: 3,
                    context: context,
                  ),
                );
              },
              child: SvgPicture.asset(context.assetImages.apple),
            ),
          ],
        ),
      ],
    );
  }
}
