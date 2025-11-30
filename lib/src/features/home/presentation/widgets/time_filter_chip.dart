import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class TimeFilterChip extends StatelessWidget {
  const TimeFilterChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      showCheckmark: false,
      labelStyle: context.typography.bodyMmedium.copyWith(
        color: context.colors.white,
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      backgroundColor: context.colors.mainAccent,
      selectedColor: context.colors.mainAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10000),
        side: BorderSide(
          color: context.colors.chipBorderColor,
          width: 1,
        ),
      ),
      label: Text('10:00'),
      onSelected: (value) {},
    );
  }
}
