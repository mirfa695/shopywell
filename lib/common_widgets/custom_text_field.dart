import 'package:auto_binding_field/auto_binding_field.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String value;
  final String? labelText;
  final void Function(String)? onChanged;
  final String? hintText;
  final double? width;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isPassword;
  const CustomTextField({
    super.key,
    required this.value,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.width,this.prefixIcon,this.suffixIcon,this.isPassword=false
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AutoBindingTextField(
        value: value,
        isPassword: isPassword,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
          suffixIcon: suffixIcon,
          labelStyle: Theme.of(context).textTheme.labelSmall,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.labelSmall,
          filled: true,
          fillColor: ColorConstants.cardGrey,
         
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(color: ColorConstants.darkGrey),
          ),
        ),
      ),
    );
  }
}
