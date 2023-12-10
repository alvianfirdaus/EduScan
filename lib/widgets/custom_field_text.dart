import 'package:flutter/material.dart';
import 'package:myapp/widgets/custom_text_style.dart';
import 'package:myapp/utils.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hint;
  final bool? hiddenText;
  final TextInputType? textInputType;
  final Function(dynamic)? validator;
  final void Function(dynamic)? onSaved;
  final bool showVisibilityIcon;

  CustomTextField({
    required this.label,
    required this.hint,
    this.textInputType,
    this.hiddenText,
    this.validator,
    this.onSaved,
    this.showVisibilityIcon = false,
    Key? key,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 13),
      child: TextFormField(
        obscureText: (widget.hiddenText ?? false) ? _isObscure : false,
        autofocus: true,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        keyboardType: widget.textInputType,
        validator: widget.validator as String? Function(String?)?,
        onSaved: widget.onSaved as void Function(String?)?,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 17, horizontal: 12),
          labelText: widget.label,
          hintText: widget.hint,
          suffixIcon: widget.showVisibilityIcon &&
                  (widget.label.toLowerCase() == 'password' ||
                      widget.label.toLowerCase() == 'ulangi password')
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  child: Icon(
                    _isObscure ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
