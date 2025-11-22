import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class SigninDescriptionWidget extends StatelessWidget {
  const SigninDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Для использования приложения \n',
            style: context.typography.bodyMregular.copyWith(
              color: context.colors.textprimary,
            ),
          ),
          TextSpan(
            text: 'выполните вход',
            style: context.typography.bodyMregular.copyWith(
              color: context.colors.orange,
            ),
          ),
          TextSpan(
            text: ' в свой аккаунт.',
            style: context.typography.bodyMregular.copyWith(
              color: context.colors.textprimary,
            ),
          ),
        ],
      ),
    );
  }
}
