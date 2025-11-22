import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

/// A generic reusable radio tile component for filter selections
class FilterRadioTile<T> extends StatelessWidget {
  final String title;
  final ValueChanged<T?> onChanged;
  final T value;
  final T? groupValue;

  const FilterRadioTile({
    super.key,
    required this.title,
    required this.onChanged,
    required this.value,
    required this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile<T>(
      activeColor: context.colors.mainAccent,
      onChanged: onChanged,
      dense: true,
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      value: value,
      groupValue: groupValue,
      title: Text(
        title,
        style: context.typography.smallParagraph.copyWith(
          color: context.colors.textprimary,
        ),
      ),
    );
  }
}
