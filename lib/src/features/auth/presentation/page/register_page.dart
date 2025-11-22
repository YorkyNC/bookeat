import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';
import 'package:bookeat/src/core/utils/helpers/validation.dart';
import 'package:bookeat/src/features/auth/presentation/components/auth_description_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/custom_button.dart';
import 'package:bookeat/src/features/auth/presentation/components/login_text_field_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/password_requirements_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/sigin_options_widget.dart';

import '../../../../app/imports.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _nameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _surnameFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _phoneFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _confirmPasswordFormKey = GlobalKey<FormState>();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _passwordError = false;
  bool _confirmPasswordError = false;

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _surnameController.dispose();
    _phoneController.dispose();
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

  bool _canRegister() {
    final emailValid = _emailFormKey.currentState?.validate() ?? false;
    final nameValid = _nameFormKey.currentState?.validate() ?? false;
    final surnameValid = _surnameFormKey.currentState?.validate() ?? false;
    final phoneValid = _phoneFormKey.currentState?.validate() ?? false;
    final passwordValid = _passwordFormKey.currentState?.validate() ?? false;
    final confirmPasswordValid = _confirmPasswordFormKey.currentState?.validate() ?? false;
    final passwordsMatch =
        _passwordController.text == _confirmPasswordController.text && _passwordController.text.isNotEmpty;
    final passwordStrong = isValidPassword(_passwordController.text);

    return emailValid &&
        nameValid &&
        surnameValid &&
        phoneValid &&
        passwordValid &&
        confirmPasswordValid &&
        passwordsMatch &&
        passwordStrong;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: context.colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: !st.hasSeenIntroduction()
            ? [
                CustomButton(
                  padding: 16,
                  onTap: () {
                    context.pop();
                  },
                  child: Icon(context.icons.close, color: context.colors.black),
                )
              ]
            : [],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Регистрация',
                        style: context.typography.h2regular.copyWith(
                          color: context.colors.textprimary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      AuthDescriptionWidget(
                        text: 'Создайте аккаунт для\n',
                        text2: 'использования приложения',
                        text3: '',
                      ),
                      const SizedBox(height: 40),
                      LoginTextFieldWidget(
                        controller: _emailController,
                        formKey: _emailFormKey,
                        onChanged: (value) {},
                        hint: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        validator: formValidatorEmail,
                      ),
                      const SizedBox(height: 12),
                      LoginTextFieldWidget(
                        controller: _nameController,
                        formKey: _nameFormKey,
                        onChanged: (value) {},
                        hint: 'Имя',
                        keyboardType: TextInputType.name,
                        validator: (value) => formValidatorNotEmpty(value, 'Имя'),
                      ),
                      const SizedBox(height: 12),
                      LoginTextFieldWidget(
                        controller: _surnameController,
                        formKey: _surnameFormKey,
                        onChanged: (value) {},
                        hint: 'Фамилия',
                        keyboardType: TextInputType.name,
                        validator: (value) => formValidatorNotEmpty(value, 'Фамилия'),
                      ),
                      const SizedBox(height: 12),
                      LoginTextFieldWidget(
                        controller: _phoneController,
                        formKey: _phoneFormKey,
                        onChanged: (value) {},
                        hint: 'Номер телефона',
                        keyboardType: TextInputType.phone,
                        validator: formValidatorPhoneNumber,
                      ),
                      const SizedBox(height: 12),
                      LoginTextFieldWidget(
                        controller: _passwordController,
                        formKey: _passwordFormKey,
                        hint: 'Пароль',
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
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: context.colors.mainAccent,
                                foregroundColor: context.colors.white,
                              ),
                              onPressed: _canRegister() ? () {} : null,
                              child: const Text(
                                'Зарегистрироваться',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      SiginOptionsWidget(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Уже есть аккаунт?',
                          style: context.typography.captionMmedium.copyWith(
                            color: context.colors.grayTextColor,
                          ),
                        ),
                        TextSpan(
                          text: ' Войти',
                          style: context.typography.captionMmedium.copyWith(
                            color: context.colors.mainAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
