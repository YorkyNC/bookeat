import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';

class LoginTextFieldWidget extends StatelessWidget {
  const LoginTextFieldWidget({
    super.key,
    required TextEditingController controller,
    required this.hint,
    this.suffixIcon,
    required this.keyboardType,
    required this.onChanged,
    required this.formKey,
    this.obscureText,
    this.visibleIcon,
    this.onSuffixIconTap,
    this.error,
    this.validator,
    this.errorText,
  }) : _controller = controller;
  final String hint;
  final TextEditingController _controller;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final GlobalKey<FormState> formKey;
  final bool? obscureText;
  final bool? visibleIcon;
  final VoidCallback? onSuffixIconTap;
  final bool? error;
  final String? Function(String?)? validator;
  final String? errorText;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        controller: _controller,
        onChanged: onChanged,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          suffixIcon: onSuffixIconTap != null
              ? GestureDetector(
                  onTap: onSuffixIconTap,
                  child: Icon(suffixIcon, color: context.colors.textprimary),
                )
              : Icon(suffixIcon, color: context.colors.textprimary),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: error == true ? context.colors.lightErrorBorder : context.colors.textFieldBorderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: error == true ? context.colors.lightErrorBorder : context.colors.textFieldBorderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: error == true ? context.colors.lightErrorBorder : context.colors.mainAccent,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: context.colors.lightErrorBorder),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: context.colors.lightErrorBorder, width: 1),
          ),
          errorStyle: context.typography.bodyLmedium.copyWith(
            color: context.colors.lightErrorBorder,
          ),
          errorText: errorText,
          labelStyle: context.typography.bodyLmedium.copyWith(
            color: context.colors.textprimary,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintText: hint,
          hintStyle: context.typography.bodyMregular.copyWith(
            color: context.colors.grayTextColor,
          ),
        ),
      ),
    );
  }
}
