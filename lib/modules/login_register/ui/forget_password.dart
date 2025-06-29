import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:shopywell/common_widgets/custom_alert_dialogue.dart';
import 'package:shopywell/common_widgets/custom_button.dart';
import 'package:shopywell/common_widgets/custom_text_field.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/helpers.dart/auth_helpers.dart';

class ForgetPassword extends HookWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final email=useState("");
    final errorMessage=useState("");
    return Scaffold(
      backgroundColor: ColorConstants.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Text("Forgot\nPassword?",style: Theme.of(context).textTheme.titleLarge,),
           SizedBox(height: 40),
            CustomTextField(hintText: "Enter your email address", value:email.value,prefixIcon: Icon(Icons.email,color: ColorConstants.darkGrey,),onChanged: (s)=>email.value=s,)
          ,SizedBox(height: 5,),
          if(errorMessage.value.isNotEmpty) Text(
                errorMessage.value,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor,
                )),
         SizedBox(height: 10,),
         RichText(text: TextSpan(text: "*",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: ColorConstants.primary),children: 
         
         [
          TextSpan(text: " We will send you a message to set or reset your new password",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: ColorConstants.extraGrey,fontSize: 12,wordSpacing: 0.4))
         ])),
         SizedBox(height: 30,),
          CustomButton(text: "Submit", onPressed: () async { 
            if(email.value.isNotEmpty!=true) errorMessage.value="Email is empty";
            else{
              await AuthHelper.resetPassword(email.value).then((v){
                if(v.status==OperationStatus.success) {
                  ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.white,
                          content: Text(
                            'Password reset successfully',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          duration: Duration(seconds: 2),
                        ),
                      );
                  context.goNamed(RoutePath.login.name);}
                else showDialog(context: context, builder: (ctx)=>CustomAlertDialogue(title: v.title,description: v.message,));
              });
            }

           },),
          
         
          ],
        ),
      ),
    );
  }
}