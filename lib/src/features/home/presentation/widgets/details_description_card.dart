import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:flutter_svg/svg.dart';

class DetailsDescriptionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  const DetailsDescriptionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: context.colors.gray200,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: context.typography.bodyMbold.copyWith(
                color: context.colors.gray900,
              ),
            ),
            Text(
              subtitle,
              style: context.typography.captionMmedium.copyWith(
                color: context.colors.neutrals,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
