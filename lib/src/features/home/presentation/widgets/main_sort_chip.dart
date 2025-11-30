import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class MainSortChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isExpandeable;
  final Color color;
  final bool isSearch;
  const MainSortChip({
    super.key,
    required this.icon,
    required this.label,
    this.isExpandeable = false,
    this.color = Colors.white,
    this.isSearch = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSearch ? context.colors.white : context.colors.chipBorderColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            Icon(
              icon,
              color: isSearch ? context.colors.white : context.colors.mainAccent,
              size: 24,
            ),
            Text(
              label,
              style: context.typography.bodyMbold.copyWith(
                color: isSearch ? context.colors.white : context.colors.gray800,
              ),
            ),
            if (isExpandeable)
              Icon(
                Icons.keyboard_arrow_down,
                color: context.colors.gray800,
                size: 24,
              ),
          ],
        ),
      ),
    );
  }
}
