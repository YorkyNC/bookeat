import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class PasswordRequirementsWidget extends StatelessWidget {
  final String password;

  const PasswordRequirementsWidget({
    super.key,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Требования к паролю:',
          style: context.typography.bodyLmedium.copyWith(
            color: context.colors.textprimary,
          ),
        ),
        const SizedBox(height: 4),
        _buildRequirementItem(
          context,
          'Минимум 8 символов',
          password.length >= 8,
        ),
        _buildRequirementItem(
          context,
          'Содержит заглавную букву',
          password.contains(RegExp(r'[A-Z]')),
        ),
        _buildRequirementItem(
          context,
          'Содержит строчную букву',
          password.contains(RegExp(r'[a-z]')),
        ),
        _buildRequirementItem(
          context,
          'Содержит цифру',
          password.contains(RegExp(r'[0-9]')),
        ),
        _buildRequirementItem(
          context,
          'Содержит специальный символ',
          password.contains(RegExp(r'[#?!@$%^&*-]')),
        ),
      ],
    );
  }

  Widget _buildRequirementItem(BuildContext context, String text, bool isValid) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        children: [
          Icon(
            isValid ? context.icons.check : context.icons.circle,
            size: 16,
            color: isValid ? context.colors.grey500 : context.colors.lightSecondaryText,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: context.typography.bodyLmedium.copyWith(
              color: isValid ? context.colors.grey500 : context.colors.lightSecondaryText,
            ),
          ),
        ],
      ),
    );
  }
}
