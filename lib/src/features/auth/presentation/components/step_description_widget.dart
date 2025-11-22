import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/features/auth/presentation/components/auth_description_widget.dart';

class StepDescriptionWidget extends StatelessWidget {
  final String title;
  final String text;
  final String text2;
  final String text3;
  const StepDescriptionWidget({
    super.key,
    required this.title,
    required this.text,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: context.typography.h2center.copyWith(
            color: context.colors.textprimary,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        AuthDescriptionWidget(
          textAlign: TextAlign.center,
          text: text,
          text2: text2,
          text3: text3,
        ),
      ],
    );
  }
}
