import 'package:shopywell/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color? iconColor;
  final Color textColor;
  final double? borderRadius;
  final EdgeInsets? padding;
  final double? height;
  final Widget? customWidget;
  final double? width;
  final bool? isLOading;

  const CustomButton({
    Key? key,
     this.text,
    required this.onPressed,
    this.icon,
    this.backgroundColor =ColorConstants.primary,
    this.textColor = Colors.white,
    this.borderRadius,
    this.iconColor,
    this.customWidget,
    this.padding,this.height=50,this.width,
    this.isLOading
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      
      height: height,
      minWidth: width,
      onPressed: onPressed,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius??14),
      ),
      padding: padding,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(isLOading==true)CircularProgressIndicator(color: Colors.white,)
          else...[
            if(icon!=null)Icon(icon,color: iconColor??ColorConstants.secondary,),
          if(customWidget!=null)customWidget!,
        if(text!=null)  Text(
            text??"",
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ]
          
        ],
      ),
    );
  }
}
