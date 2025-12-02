import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class GuestPickerSheet extends StatefulWidget {
  const GuestPickerSheet({
    super.key,
  });

  @override
  State<GuestPickerSheet> createState() => _GuestPickerSheetState();
}

class _GuestPickerSheetState extends State<GuestPickerSheet> {
  int _selectedGuests = 2;

  void _incrementGuests() {
    setState(() {
      _selectedGuests++;
    });
  }

  void _decrementGuests() {
    if (_selectedGuests > 1) {
      setState(() {
        _selectedGuests--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 200,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: _decrementGuests,
                  icon: Icon(
                    Icons.remove_circle_outline,
                    size: 40,
                    color: _selectedGuests > 1 ? context.colors.mainAccent : context.colors.textGray,
                  ),
                ),
                const SizedBox(width: 32),
                Text(
                  '$_selectedGuests',
                  style: context.typography.h2regular.copyWith(
                    color: context.colors.textprimary,
                  ),
                ),
                const SizedBox(width: 32),
                IconButton(
                  onPressed: _incrementGuests,
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 40,
                    color: context.colors.mainAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  context.pop(_selectedGuests);
                },
                child: Text('Выбрать'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
