import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';

class ForgotPasswordButtonWidget extends StatelessWidget {
  const ForgotPasswordButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          context.push(RoutePaths.forgotPassword);
        },
        child: Text(
          'Забыли пароль?',
          style: context.typography.captionMsemibold.copyWith(
            color: context.colors.mainAccent,
          ),
        ),
      ),
    );
  }
}
