import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class DetailsDescriptionChip extends StatelessWidget {
  final String text;
  final bool isBold;
  final Color color;
  const DetailsDescriptionChip({
    super.key,
    required this.text,
    required this.color,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10000),
      ),
      child: Text(
        text,
        style: isBold
            ? context.typography.captionMbold.copyWith(
                color: context.colors.black,
              )
            : context.typography.captionMmedium.copyWith(
                color: context.colors.black,
              ),
      ),
    );
  }
}
