import 'package:auto_binding_field/auto_binding_field.dart';
import 'package:flutter/services.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CustomTextFieldNew extends StatelessWidget {
  const CustomTextFieldNew({
    super.key,
    this.labelText,
    this.onChanged,
    this.hintText,
    this.width = double.infinity,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.icon,
    this.backgroundColor,
    this.borderRadius,
    this.value,
    this.readOnly,
    this.keyboardType,this.inputFormatters
  });

  final String? labelText;
  final void Function(String)? onChanged;
  final String? hintText;
  final double? width;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? icon;
  final Color? backgroundColor;
  final int? maxLines;
  final double? borderRadius;
  final String? value;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return AutoBindingTextField(
      onChanged: onChanged,
      keyboardType:keyboardType ,
      inputFormatters: inputFormatters,
      value: value,
      readOnly: readOnly??false,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        icon: icon,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorConstants.greyColor),
        filled: true,
        fillColor:backgroundColor?? Colors.white,
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(
          top: maxLines! > 1 ? 16.0 : 12.0, // Adjust top padding for multiline
          bottom: 12.0,
          left: 15.0,
          right: 15.0,
        ),
        prefixIcon: prefixIcon,
        prefixIconConstraints: BoxConstraints(
          minWidth: 40,
          minHeight: maxLines! > 1 ? 60 : 20, // Adjust height for multiline
        ),
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius??12.0),
          borderSide: BorderSide(color: Colors.grey[300]!, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius?? 12.0),
          borderSide:  BorderSide(color: ColorConstants.secondary, width: 0.5),
        ),
      ),
       );
  }
}
