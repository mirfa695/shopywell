import 'package:flutter/material.dart';
import 'package:shopywell/common_widgets/custom_button.dart';
import 'package:shopywell/constants/color_constants.dart';

class CustomAlertDialogue extends StatelessWidget {
  final String? title;
  final String? description;
  final String? firstButtonTitle;
  final String? secondButtonTitle;
  final void Function()? firstButtonOnTap;
  final void Function()? secondButtonOnTap;
  const CustomAlertDialogue({super.key,this.title,this.description,this.firstButtonOnTap,this.firstButtonTitle,this.secondButtonOnTap,this.secondButtonTitle});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisSize: MainAxisSize.min,spacing: 20,
            children: [
              Text(title??"",style: Theme.of(context).textTheme.titleMedium,),
              Text(description??"not found!",style: Theme.of(context).textTheme.labelMedium,)
              ,Row(
                spacing: 10,
                children: [
                  Expanded(child: CustomButton(onPressed: firstButtonOnTap??(){Navigator.pop(context);},text: firstButtonTitle??"Cancel",)),
                 if(secondButtonTitle!=null) Expanded(child: CustomButton(onPressed: secondButtonOnTap??(){},text: secondButtonTitle,backgroundColor: ColorConstants.tertiary,))
                ],
              )
            ]
            ,
          ),
        ),
    );
  }
}