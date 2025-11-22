import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/utils/helpers/validation.dart';
import 'package:bookeat/src/features/auth/presentation/components/login_text_field_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/password_requirements_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/step_description_widget.dart';
import 'package:flutter_svg/svg.dart';

class SetPasswordView extends StatefulWidget {
  final VoidCallback onContinue;
  final String email;
  final String pinId;
  final String pin;

  const SetPasswordView({
    super.key,
    required this.onContinue,
    required this.email,
    required this.pinId,
    required this.pin,
  });

  @override
  State<SetPasswordView> createState() => _SetPasswordViewState();
}

class _SetPasswordViewState extends State<SetPasswordView> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _passwordFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _confirmPasswordFormKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _passwordError = false;
  bool _confirmPasswordError = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _validatePasswords() {
    setState(() {
      _passwordError = _passwordController.text.isNotEmpty && !isValidPassword(_passwordController.text);
      _confirmPasswordError =
          _confirmPasswordController.text.isNotEmpty && _passwordController.text != _confirmPasswordController.text;
    });
  }

  bool _canContinue() {
    final passwordValid = _passwordFormKey.currentState?.validate() ?? false;
    final confirmPasswordValid = _confirmPasswordFormKey.currentState?.validate() ?? false;
    final passwordsMatch =
        _passwordController.text == _confirmPasswordController.text && _passwordController.text.isNotEmpty;
    final passwordStrong = isValidPassword(_passwordController.text);

    return passwordValid && confirmPasswordValid && passwordsMatch && passwordStrong;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  SvgPicture.asset(
                    context.assetImages.email,
                  ),
                  const SizedBox(height: 20),
                  StepDescriptionWidget(
                    title: 'Новый пароль',
                    text: 'Придумайте новый пароль для\n',
                    text2: 'вашего аккаунта',
                    text3: '',
                  ),
                  const SizedBox(height: 32),
                  LoginTextFieldWidget(
                    controller: _passwordController,
                    formKey: _passwordFormKey,
                    hint: 'Новый пароль',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_isPasswordVisible,
                    suffixIcon: _isPasswordVisible ? context.icons.views : context.icons.views_off,
                    onSuffixIconTap: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    onChanged: (value) {
                      _validatePasswords();
                    },
                    error: _passwordError,
                    validator: formValidatorPassword,
                  ),
                  if (_passwordController.text.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    PasswordRequirementsWidget(
                      password: _passwordController.text,
                    ),
                  ],
                  const SizedBox(height: 12),
                  LoginTextFieldWidget(
                    controller: _confirmPasswordController,
                    formKey: _confirmPasswordFormKey,
                    hint: 'Подтвердите пароль',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_isConfirmPasswordVisible,
                    suffixIcon: _isConfirmPasswordVisible ? context.icons.views : context.icons.views_off,
                    onSuffixIconTap: () {
                      setState(() {
                        _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                      });
                    },
                    onChanged: (value) {
                      _validatePasswords();
                    },
                    error: _confirmPasswordError,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Подтвердите пароль';
                      }
                      if (value != _passwordController.text) {
                        return 'Пароли не совпадают';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _canContinue() ? widget.onContinue : null,
              child: const Text(
                'Продолжить',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
