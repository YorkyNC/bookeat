import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';
import 'package:bookeat/src/features/auth/presentation/components/auth_description_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/custom_button.dart';
import 'package:bookeat/src/features/auth/presentation/components/forgot_password_button_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/login_text_field_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/register_button_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/sigin_options_widget.dart';
import 'package:bookeat/src/features/auth/presentation/view/email_step_view.dart';
import 'package:bookeat/src/features/auth/presentation/view/otp_step_view.dart';
import 'package:bookeat/src/features/auth/presentation/view/set_password_view.dart';

import '../../../../app/imports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

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
                        'Вход',
                        style: context.typography.h2regular.copyWith(
                          color: context.colors.textprimary,
                        ),
                      ),
                      SizedBox(height: 12),
                      AuthDescriptionWidget(
                          text: 'Для использования приложения \n', text2: 'выполните вход', text3: ' в свой аккаунт.'),
                      SizedBox(height: 40),
                      LoginTextFieldWidget(
                          // error: state.error != null && state.error!.isNotEmpty,
                          controller: _emailController,
                          formKey: _formKey1,
                          onChanged: (value) {},
                          hint: 'Email',
                          keyboardType: TextInputType.emailAddress),
                      SizedBox(height: 12),
                      LoginTextFieldWidget(
                        controller: _passwordController,
                        formKey: _formKey2,
                        onChanged: (value) {},
                        hint: 'Пароль',
                        // suffixIcon: state.isObscurePassword ? context.icons.views_off : context.icons.views,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: false,
                        onSuffixIconTap: () {},
                      ),
                      SizedBox(height: 12),
                      ForgotPasswordButtonWidget(),
                      SizedBox(height: 32),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: context.colors.mainAccent,
                                foregroundColor: context.colors.white,
                              ),
                              // onPressed: () {
                              //   bloc.add(SignIn('yyt@gmail.com', '123'));
                              // },
                              onPressed: () {},
                              child: Text(
                                'Войти',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      SiginOptionsWidget()
                    ],
                  ),
                ),
              ),
            ),
            RegisterButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final PageController _pageController = PageController();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
  int _currentStep = 0;
  final int _totalSteps = 3;
  final TextEditingController _otpController = TextEditingController();
  String _pinId = '';
  String _pin = '';

  @override
  void dispose() {
    _pageController.dispose();
    _emailController.dispose();
    _otpController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_currentStep < _totalSteps - 1) {
      // Store pin when moving from OTP step to password step
      if (_currentStep == 1) {
        _pin = _otpController.text;
        // TODO: Get pinId from forgot password API response
        // For now, using a placeholder - this should come from the API
        _pinId = 'pinId_from_api';
      }

      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentStep++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: AppBar(
        backgroundColor: context.colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            context.icons.arrow_left,
            color: context.colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _totalSteps,
                  (index) => Container(
                    width: 40,
                    height: 4,
                    margin: EdgeInsets.only(right: index < _totalSteps - 1 ? 8 : 0),
                    decoration: BoxDecoration(
                      color: index <= _currentStep ? context.colors.mainAccent : context.colors.grey100,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  EmailStepView(
                    onPressed: _nextStep,
                    emailFormKey: _emailFormKey,
                    emailController: _emailController,
                  ),
                  OtpStepView(otpController: _otpController, onContinue: _nextStep),
                  SetPasswordView(
                    onContinue: () {
                      // TODO: Call reset password API here
                      // ResetPasswordRequest(
                      //   email: _emailController.text,
                      //   pinId: _pinId,
                      //   pin: _pin,
                      //   newPassword: password,
                      // )
                      context.pop();
                    },
                    email: _emailController.text,
                    pinId: _pinId,
                    pin: _pin,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
