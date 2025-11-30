import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoryAvatar extends StatelessWidget {
  const StoryAvatar({
    super.key,
    required this.imagePath,
    this.label,
    this.size = 76,
    this.onTap,
    this.gradientColors,
    this.showLabel = true,
  });

  final String imagePath;
  final String? label;
  final double size;
  final VoidCallback? onTap;
  final List<Color>? gradientColors;
  final bool showLabel;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final defaultGradient = gradientColors ??
        [
          colors.orange,
          colors.mainAccent,
        ];

    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: defaultGradient,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.all(3),
            child: Container(
              decoration: BoxDecoration(
                color: colors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(4),
              child: Container(
                decoration: BoxDecoration(
                  color: colors.grey100,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: imagePath.endsWith('.svg')
                      ? SvgPicture.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
          ),
        ),
        if (showLabel && label != null) ...[
          const SizedBox(height: 8),
          SizedBox(
            width: size,
            child: Text(
              label!,
              style: context.typography.outlinesemibold.copyWith(
                color: colors.gray700,
                fontSize: 12,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ],
    );
  }
}
