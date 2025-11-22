import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: GestureDetector(
          onTap: () {
            context.push(RoutePaths.register);
          },
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Нет аккаунта?',
                  style: context.typography.captionMmedium.copyWith(
                    color: context.colors.grayTextColor,
                  ),
                ),
                TextSpan(
                  text: ' Зарегистрироваться',
                  style: context.typography.captionMmedium.copyWith(
                    color: context.colors.mainAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
