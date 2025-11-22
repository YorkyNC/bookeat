import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomOtpInput extends StatelessWidget {
  final TextEditingController controller;
  final int length;
  final Function(String)? onCompleted;
  final double borderRadius;
  final double fieldHeight;
  final double? fieldWidth;

  const CustomOtpInput({
    super.key,
    required this.controller,
    this.length = 4,
    this.onCompleted,
    this.borderRadius = 12,
    this.fieldHeight = 56,
    this.fieldWidth,
  });

  @override
  Widget build(BuildContext context) {
    final width = fieldWidth ?? MediaQuery.of(context).size.width * 0.175;

    return PinCodeTextField(
      controller: controller,
      autoDisposeControllers: false,
      appContext: context,
      length: length,
      hintCharacter: '•',
      textStyle: context.typography.bodyMregular.copyWith(
        color: context.colors.black,
      ),
      hintStyle: context.typography.bodyMregular.copyWith(
        color: context.colors.lightSecondaryText,
      ),
      cursorColor: context.colors.mainAccent,
      animationType: AnimationType.scale,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      keyboardType: TextInputType.number,
      onCompleted: onCompleted,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        fieldHeight: fieldHeight,
        fieldWidth: width,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        activeBorderWidth: 1.0,
        inactiveBorderWidth: 1.0,
        selectedBorderWidth: 1.0,
        disabledBorderWidth: 1.0,
        errorBorderWidth: 1.0,
        activeColor: context.colors.mainAccent,
        activeFillColor: context.colors.white,
        inactiveColor: context.colors.lightSecondaryText,
        inactiveFillColor: context.colors.white,
        selectedColor: context.colors.mainAccent,
        selectedFillColor: context.colors.white,
        disabledColor: context.colors.textprimary,
        errorBorderColor: context.colors.lightErrorBorder,
      ),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp("[0-9]")),
      ],
    );
  }
}
