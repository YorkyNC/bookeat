import 'package:flutter_svg/svg.dart';
import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';

class ErrorRegisterMessageWidget extends StatelessWidget {
  const ErrorRegisterMessageWidget({
    super.key,
    required Animation<double> logoAnimation,
    this.errorMessage,
  }) : _logoAnimation = logoAnimation;

  final Animation<double> _logoAnimation;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _logoAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _logoAnimation.value,
                  child: SvgPicture.asset(context.assetImages.error),
                );
              },
            ),
            SizedBox(height: 16),
            Text(
              textAlign: TextAlign.center,
              'Что-то пошло не так...',
              style: context.typography.title.copyWith(
                color: context.colors.textprimary,
                height: 1.2,
              ),
            ),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.center,
              errorMessage ?? 'повторите попытку регистрации',
              style: context.typography.smallParagraph.copyWith(
                color: context.colors.lightSecondaryText,
              ),
            ),
            SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.go(RoutePaths.login);
                    },
                    child: Text('Войти'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
