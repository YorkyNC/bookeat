import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class CustomAppButton extends StatelessWidget {
  final double? padding;
  final Widget icon;
  final bool isTransparent;
  final double? aroundPadding;
  final VoidCallback? onTap;
  const CustomAppButton({
    super.key,
    this.isTransparent = false,
    this.padding = 12,
    this.aroundPadding = 16,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: aroundPadding ?? 16),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        customBorder: CircleBorder(),
        child: Container(
          padding: EdgeInsets.all(padding ?? 12),
          decoration: BoxDecoration(
            color: isTransparent ? context.colors.textprimary.withAlpha(32) : context.colors.grey100,
            shape: BoxShape.circle,
          ),
          child: icon,
        ),
      ),
    );
  }
}
