import 'package:flutter/material.dart';
import 'package:myapp/widgets/custom_text_style.dart';
import 'package:myapp/utils.dart';

class customTextField extends StatefulWidget {
  final String label;
  final String hint;
  final bool? hiddenText;
  final TextInputType? textInputType;
  final Function(dynamic)? validator;
  final void Function(dynamic)? onSaved;

  customTextField(
      {required this.label,
      required this.hint,
      this.textInputType,
      this.hiddenText,
      this.validator,
      this.onSaved,
      Key? key})
      : super(key: key);

  @override
  State<customTextField> createState() => _customTextFieldState();
}

class _customTextFieldState extends State<customTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 13), 
      child: TextFormField( 
        focusNode: FocusNode(),
        obscureText: widget.hiddenText ??
            false, // Menggunakan nilai default jika hiddenText adalah null
        autofocus: true,
        style: SafeGoogleFont(
          'Urbanist',
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
        ),
      ),
    );
  }
}
