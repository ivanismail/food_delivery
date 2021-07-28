import 'package:food_delivery/export.dart';

class UseTextField extends StatelessWidget {
  final String hint, label, helper, prefixText, suffixText;
  final TextInputType keyboardType;
  final int maxLines, minLines, maxLength;
  final TextEditingController controller;
  final Function onChanged, onSubmitted, onTap;
  final bool readOnly, obscureText;
  final TextInputAction textInputAction;
  final TextStyle style;
  final Widget suffixIcon;
  final InputBorder border;

  const UseTextField({
    Key key,
    this.hint,
    this.label,
    this.helper,
    this.keyboardType,
    this.maxLines = 1,
    this.minLines,
    this.controller,
    this.prefixText,
    this.onChanged,
    this.readOnly = false,
    this.suffixText,
    this.textInputAction,
    this.onSubmitted,
    this.style,
    this.maxLength,
    this.obscureText = false,
    this.onTap,
    this.suffixIcon,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      onChanged: onChanged,
      controller: controller,
      maxLength: maxLength,
      decoration: InputDecoration(
        helperText: helper,
        hintText: hint,
        labelText: label,
        prefixText: prefixText,
        suffixText: suffixText,
        suffixIcon: suffixIcon,
        border: border,
      ),
      keyboardType: keyboardType,
      maxLines: maxLines,
      minLines: minLines,
      textInputAction: textInputAction,
      onSubmitted: onSubmitted,
      style: style,
      obscureText: obscureText,
      onTap: onTap,
    );
  }
}
