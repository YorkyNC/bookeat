import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class AuthDescriptionWidget extends StatelessWidget {
  final String text;
  final String text2;
  final String text3;
  final TextAlign textAlign;
  const AuthDescriptionWidget({
    super.key,
    required this.text,
    required this.text2,
    required this.text3,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: context.typography.bodyMregular.copyWith(
              color: context.colors.textprimary,
            ),
          ),
          TextSpan(
            text: text2,
            style: context.typography.bodyMregular.copyWith(
              color: context.colors.orange,
            ),
          ),
          TextSpan(
            text: text3,
            style: context.typography.bodyMregular.copyWith(
              color: context.colors.textprimary,
            ),
          ),
        ],
      ),
    );
  }
}
