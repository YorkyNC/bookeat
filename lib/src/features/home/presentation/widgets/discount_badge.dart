import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class DiscountBadge extends StatelessWidget {
  final String discount;
  const DiscountBadge({
    super.key,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: context.colors.mainAccent,
        borderRadius: BorderRadius.circular(1000),
      ),
      child: Text(
        discount,
        style: context.typography.captionMbold.copyWith(
          color: context.colors.white,
        ),
      ),
    );
  }
}
