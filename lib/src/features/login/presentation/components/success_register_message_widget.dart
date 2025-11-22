import 'package:flutter_svg/svg.dart';
import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class SuccessRegisterMessageWidget extends StatelessWidget {
  const SuccessRegisterMessageWidget({
    required this.onPressed,
    super.key,
    required Animation<double> logoAnimation,
    required this.isSignUpVerified,
    this.title,
    this.subtitle,
  }) : _logoAnimation = logoAnimation;
  final bool isSignUpVerified;
  final VoidCallback onPressed;
  final Animation<double> _logoAnimation;
  final String? title;
  final String? subtitle;

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
                  child: SvgPicture.asset(context.assetImages.successSvg),
                );
              },
            ),
            SizedBox(height: 16),
            Text(
              textAlign: TextAlign.center,
              title ?? 'Поздравляю, вы \nзарегистрированы!',
              style: context.typography.title.copyWith(
                color: context.colors.textprimary,
                height: 1.2,
              ),
            ),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.center,
              subtitle ?? 'теперь осталось заполнить данные о вашем пункте выдачи заказов',
              style: context.typography.smallParagraph.copyWith(
                color: context.colors.textprimary,
              ),
            ),
            SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: Text('Далее'),
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
