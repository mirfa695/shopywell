import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/common_widgets/custom_alert_dialogue.dart';
import 'package:shopywell/common_widgets/custom_button.dart';
import 'package:shopywell/common_widgets/custom_search_field.dart';
import 'package:shopywell/common_widgets/cutom_app_bar.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopywell/models/address_model.dart';
import 'package:shopywell/models/status_model.dart';
import 'package:shopywell/modules/checkout/vm/add_address_vm.dart';

class CheckoutFill extends HookConsumerWidget {
  const CheckoutFill({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final AddressModel? address= ref.watch(addAddressVmProvider).value?.data;
    final StatusModel? status=ref.watch(addAddressVmProvider).value;
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        enableBack: true,
       
     title: Text("Checkout",style: Theme.of(context).textTheme.titleMedium,),
     
     ),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.only(right:  30.0,left: 30,bottom: 30),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
             Center(child: CircleAvatar(radius: 60, backgroundColor: ColorConstants.secondary, backgroundImage: NetworkImage("https://mir-s3-cdn-cf.behance.net/user/276/eebdd01830865.6042674a3a302.png"),))
            ,
            SizedBox(height: 3,),
            Text("Personal Information",style: Theme.of(context).textTheme.titleMedium,),
            Text("Email Address"),
            CustomTextFieldNew(value: address?.email,readOnly: address?.password!=null,onChanged: (s)=>ref.read(addAddressVmProvider.notifier).changeEmail(s),),
            if (status?.status ==
                    OperationStatus.warning &&
                status?.indicator == AddressErrorIndicator.email)
              Text(
                status?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor,
                ),
              ),
           if(address?.password!=null) ...[ Text("Password"),
           CustomTextFieldNew(value: address?.password,readOnly: true,),
            InkWell(
              onTap: (){
                context.pushReplacementNamed(RoutePath.forgotPassword.name);
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Text("Change password",style: TextStyle(color: ColorConstants.secondary,decoration: TextDecoration.underline,decorationColor: ColorConstants.secondary),)),
            )]
           ,
           SizedBox(height: 2,),
            SizedBox(
            width: MediaQuery.of(context).size.width-40,
            child: Divider(color: ColorConstants.greyColor,thickness: .5,)),
            SizedBox(height: 2,),
           Text("Business address details",style: Theme.of(context).textTheme.titleMedium,),
            Text("Pincode"),
            CustomTextFieldNew(value: address?.pinode.toString(),onChanged: (v)=>ref.read(addAddressVmProvider.notifier).changePincode(v),keyboardType: TextInputType.number,inputFormatters: [FilteringTextInputFormatter.digitsOnly,],),
             if (status?.status ==
                    OperationStatus.warning &&
                status?.indicator == AddressErrorIndicator.pincode)
              Text(
                status?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor
                ),
              ),
            Text("Address"),
            CustomTextFieldNew(value: address?.address,onChanged: (v)=> ref.read(addAddressVmProvider.notifier).changeAddress(v) ),
            if (status?.status ==
                    OperationStatus.warning &&
                status?.indicator == AddressErrorIndicator.address)
              Text(
                status?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor
                ),
              ),
            Text("City"),
            CustomTextFieldNew(value: address?.city,onChanged: (s)=>ref.read(addAddressVmProvider.notifier).changeCity(s),),
            if (status?.status ==
                    OperationStatus.warning &&
                status?.indicator == AddressErrorIndicator.city)
              Text(
                status?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor
                ),
              ),
            Text("State"),
            CustomTextFieldNew(value: address?.state,onChanged: (v)=>ref.read(addAddressVmProvider.notifier).changeState(v),),
           if (status?.status ==
                    OperationStatus.warning &&
                status?.indicator == AddressErrorIndicator.state)
              Text(
                status?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor
                ),
              ),
            Text("Country"),
            CustomTextFieldNew(value: address?.country,onChanged: (s)=>ref.read(addAddressVmProvider.notifier).changeCountry(s),),
            if (status?.status ==
                    OperationStatus.warning &&
                status?.indicator == AddressErrorIndicator.country)
              Text(
                status?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor
                ),
              ),
             SizedBox(height: 2,),
            SizedBox(
            width: MediaQuery.of(context).size.width-40,
            child: Divider(color: ColorConstants.greyColor,thickness: .5,)),
            SizedBox(height: 2,),
            Text("Bank Account Details",style: Theme.of(context).textTheme.titleMedium,),
            Text("Bank account number"),
            CustomTextFieldNew(value: address?.bankAccount,onChanged: (s)=>ref.read(addAddressVmProvider.notifier).changeAccountNumber(s),),
            if (status?.status ==
                    OperationStatus.warning &&
                status?.indicator == AddressErrorIndicator.acNo)
              Text(
                status?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor
                ),
              ),
            Text("Account holder's name"),
            CustomTextFieldNew(value: address?.acHolderName,onChanged: (v)=>ref.read(addAddressVmProvider.notifier).changeAcName(v),),
             Text("IFSC CODE"),
            CustomTextFieldNew(value: address?.ifscCode,onChanged: (s)=>ref.read(addAddressVmProvider.notifier).changeIFSC(s),),
            if (status?.status ==
                    OperationStatus.warning &&
                status?.indicator == AddressErrorIndicator.ifsc)
              Text(
                status?.message ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorConstants.errorColor
                ),
              ),
            SizedBox(height: 3,),
            CustomButton(borderRadius: 4,
            isLOading: ref.watch(addAddressVmProvider).isLoading,
             onPressed: () async =>
            await ref.read(addAddressVmProvider.notifier).saveAddress().then((v){
               if (v.status == OperationStatus.success) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.white,
                          content: Text(
                            'address saved',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      context.pushNamed(RoutePath.cartPage.name);
                    } else if (v.status == OperationStatus.failure) {
                      showDialog(
                        context: context,
                        builder:
                            (ctx) => CustomAlertDialogue(
                              title: v.title,
                              description: v.message,
                            ),
                      );
                    }
            })
            ,text: "save",)
          ],
         ),
       ),
     ),
     );
  }
}