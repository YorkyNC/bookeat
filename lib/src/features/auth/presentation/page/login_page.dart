import 'dart:developer' show log;

import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';
import 'package:bookeat/src/core/services/injectable/injectable_service.dart';
import 'package:bookeat/src/features/auth/presentation/bloc/authorization_bloc.dart';
import 'package:bookeat/src/features/auth/presentation/components/custom_button.dart';
import 'package:bookeat/src/features/auth/presentation/components/custom_snack_bar.dart';
import 'package:bookeat/src/features/auth/presentation/components/forgot_password_button_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/login_text_field_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/register_button_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/sigin_options_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/signin_description_widget.dart';

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
    return BlocProvider(
      create: (context) => getIt<AuthorizationBloc>(),
      child: Scaffold(
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
        body: BlocBuilder<AuthorizationBloc, AuthorizationState>(
          builder: (context, state) {
            final bloc = context.read<AuthorizationBloc>();
            return BlocListener<AuthorizationBloc, AuthorizationState>(
              listenWhen: (previous, current) {
                return previous.success != current.success || previous.error != current.error;
              },
              listener: (context, state) {
                if (state.success) {
                  _emailController.clear();
                  _passwordController.clear();
                  log('authStatus: ${state.authStatus}');
                }
                if (state.error != null && state.error!.isNotEmpty) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    CustomSnackBar.show(
                      color: context.colors.lightErrorBorder,
                      title: state.error!,
                      seconds: 3,
                      context: context,
                    ),
                  );
                }
              },
              child: state.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : SafeArea(
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
                                    SigninDescriptionWidget(),
                                    SizedBox(height: 40),
                                    LoginTextFieldWidget(
                                        error: state.error != null && state.error!.isNotEmpty,
                                        controller: _emailController,
                                        bloc: bloc,
                                        formKey: _formKey1,
                                        onChanged: (value) {
                                          bloc.add(EmailChanged(value));
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return null;
                                          }
                                          if (!state.isEmailValid) {
                                            return 'Неверный формат';
                                          }
                                          return null;
                                        },
                                        hint: 'Email',
                                        keyboardType: TextInputType.emailAddress),
                                    SizedBox(height: 12),
                                    LoginTextFieldWidget(
                                      error: state.error != null && state.error!.isNotEmpty,
                                      controller: _passwordController,
                                      bloc: bloc,
                                      formKey: _formKey2,
                                      onChanged: (value) {
                                        bloc.add(PasswordChanged(value));
                                      },
                                      hint: 'Пароль',
                                      suffixIcon:
                                          state.isObscurePassword ? context.icons.views_off : context.icons.views,
                                      keyboardType: TextInputType.visiblePassword,
                                      obscureText: state.isObscurePassword,
                                      onSuffixIconTap: () {
                                        bloc.add(PasswordVisibilityChanged(!state.isObscurePassword));
                                      },
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
                                            onPressed: state.isLoginVerified && state.isEmailValid
                                                ? () {
                                                    final currentState = bloc.state;
                                                    bloc.add(
                                                        SignIn(currentState.email ?? '', currentState.password ?? ''));
                                                    // bloc.add(SignIn('yyt@gmail.com', '123'));
                                                  }
                                                : null,
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
          },
        ),
      ),
    );
  }
}
