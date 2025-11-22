import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Продолжая авторизацию, вы соглашаетесь со \nвсеми пунктами документов ',
            style: context.typography.extraSmallParagraph.copyWith(
              color: context.colors.lightSecondaryText,
            ),
          ),
          TextSpan(
            text: '«Условия пользования» и «Политика конфиденциальности»',
            style: context.typography.extraSmallParagraph.copyWith(
              color: context.colors.textprimary,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          )
        ],
      ),
    );
  }
}
