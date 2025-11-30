import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaCard extends StatelessWidget {
  final String title;
  final String icon;
  const SocialMediaCard({
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colors.gray200,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
            ),
            SizedBox(height: 12),
            Text(
              title,
              style: context.typography.bodyMsemibold.copyWith(
                color: context.colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
