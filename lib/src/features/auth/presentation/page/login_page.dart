import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';
import 'package:bookeat/src/features/auth/presentation/components/auth_description_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/custom_button.dart';
import 'package:bookeat/src/features/auth/presentation/components/forgot_password_button_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/login_text_field_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/register_button_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/sigin_options_widget.dart';
import 'package:bookeat/src/features/auth/presentation/page/forgot_password_page.dart';
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
