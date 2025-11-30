import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:flutter_svg/svg.dart';

class DetailsDescriptionCardSecVariant extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  const DetailsDescriptionCardSecVariant({
    required this.title,
    required this.subtitle,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: context.colors.grey100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: 24,
            height: 24,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.typography.bodyMsemibold.copyWith(color: context.colors.gray900),
              ),
              Text(
                subtitle,
                style: context.typography.captionMmedium.copyWith(color: context.colors.neutrals),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
