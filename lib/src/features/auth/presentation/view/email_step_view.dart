import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/features/auth/presentation/components/login_text_field_widget.dart';
import 'package:bookeat/src/features/auth/presentation/components/step_description_widget.dart';
import 'package:flutter_svg/svg.dart';

class EmailStepView extends StatefulWidget {
  final VoidCallback onPressed;
  final GlobalKey<FormState> emailFormKey;
  final TextEditingController emailController;
  const EmailStepView({
    required this.onPressed,
    super.key,
    required this.emailFormKey,
    required this.emailController,
  });

  @override
  State<EmailStepView> createState() => _EmailStepViewState();
}

class _EmailStepViewState extends State<EmailStepView> {
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
                    title: 'Забыли пароль',
                    text: 'Для восстановления пароля\n',
                    text2: 'введите почту',
                    text3: ' указанную при регистрации.',
                  ),
                  const SizedBox(height: 32),
                  LoginTextFieldWidget(
                    key: widget.emailFormKey,
                    hint: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    controller: widget.emailController,
                    formKey: widget.emailFormKey,
                    onChanged: (value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
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
              onPressed: widget.onPressed,
              child: Text(
                'Продолжить',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
