import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:scroll_time_picker/scroll_time_picker.dart';

class TimePickerSheet extends StatelessWidget {
  const TimePickerSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 200,
          child: ScrollTimePicker(
            indicator: Container(
              height: 35,
              width: context.width,
              color: Colors.transparent,
            ),
            viewType: [TimePickerViewType.hour, TimePickerViewType.minute],
            options: TimePickerOptions(
              backgroundColor: context.colors.grey100,
            ),
            scrollViewOptions: TimePickerScrollViewOptions(
              hour: ScrollViewDetailOptions(
                textStyle: context.typography.h3regular.copyWith(color: context.colors.textprimary),
                selectedTextStyle: context.typography.h3regular.copyWith(color: context.colors.textprimary),
                margin: const EdgeInsets.only(right: 32),
              ),
              minute: ScrollViewDetailOptions(
                textStyle: context.typography.h3regular.copyWith(color: context.colors.textprimary),
                selectedTextStyle: context.typography.h3regular.copyWith(color: context.colors.textprimary),
                margin: const EdgeInsets.only(left: 32),
              ),
            ),
            selectedTime: DateTime.now(),
            is12hFormat: false,
            onDateTimeChanged: (DateTime value) {},
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'Выбрать',
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
