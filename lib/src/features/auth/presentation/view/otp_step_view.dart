import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/otp/custom_otp_input.dart';
import 'package:bookeat/src/features/auth/presentation/components/step_description_widget.dart';
import 'package:flutter_svg/svg.dart';

class OtpStepView extends StatelessWidget {
  final TextEditingController otpController;
  final VoidCallback onContinue;
  const OtpStepView({
    required this.otpController,
    required this.onContinue,
    super.key,
  });

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
                    context.assetImages.otp,
                  ),
                  const SizedBox(height: 20),
                  StepDescriptionWidget(
                    title: 'Введите код',
                    text: 'Введите код, отправленный на почту: ',
                    text2: 'example@gmail.com',
                    text3: '',
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: CustomOtpInput(
                          controller: otpController,
                          length: 4,
                          borderRadius: 12,
                          fieldHeight: 56,
                          onCompleted: (value) {
                            otpController.text = value;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Не получили код? ',
                            style: context.typography.bodyMregular.copyWith(
                              color: context.colors.grayTextColor,
                            ),
                          ),
                          TextSpan(
                              text: 'Запросить новый',
                              style: context.typography.bodyMregular.copyWith(
                                color: context.colors.mainAccent,
                              )),
                        ],
                      ),
                    ),
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
              onPressed: onContinue,
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
