import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/features/auth/presentation/bloc/authorization_bloc.dart';

class PasswordRequirementsWidget extends StatelessWidget {
  final AuthorizationState state;

  const PasswordRequirementsWidget({
    super.key,
    required this.state,
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
        SizedBox(height: 4),
        _buildRequirementItem(
          context,
          'Минимум 8 символов',
          state.password?.length != null && state.password!.length >= 8,
        ),
        _buildRequirementItem(
          context,
          'Содержит заглавную букву',
          state.password?.contains(RegExp(r'[A-Z]')) ?? false,
        ),
        _buildRequirementItem(
          context,
          'Содержит строчную букву',
          state.password?.contains(RegExp(r'[a-z]')) ?? false,
        ),
        _buildRequirementItem(
          context,
          'Содержит цифру',
          state.password?.contains(RegExp(r'[0-9]')) ?? false,
        ),
        _buildRequirementItem(
          context,
          'Содержит специальный символ',
          state.password?.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')) ?? false,
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
          SizedBox(width: 8),
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
