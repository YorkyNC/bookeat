import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class CustomButton extends StatelessWidget {
  final double padding;
  final IconData? icon;
  final Widget? child;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.onTap, this.icon, this.child, this.padding = 14})
      : assert(icon != null || child != null, 'icon or child cannot be null');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Material(
        color: context.colors.grey100,
        shape: CircleBorder(),
        child: InkWell(
          customBorder: CircleBorder(),
          splashColor: context.colors.mainAccent,
          highlightColor: context.colors.mainAccent,
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: context.colors.grey100,
              shape: BoxShape.circle,
            ),
            child: child ??
                Icon(
                  icon,
                  color: context.colors.white,
                  size: 20,
                ),
          ),
        ),
      ),
    );
  }
}
