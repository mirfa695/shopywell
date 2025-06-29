import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/common_widgets/custom_alert_dialogue.dart';
import 'package:shopywell/common_widgets/custom_button.dart';
import 'package:shopywell/common_widgets/cutom_app_bar.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/common_enums.dart';
import 'package:shopywell/models/purchase_model.dart';
import 'package:shopywell/modules/checkout/repository/checkout_repository.dart';
import 'package:shopywell/modules/checkout/ui/elements/checkout_success.dart';
import 'package:flutter/material.dart';
import 'package:shopywell/modules/checkout/vm/checkout_cart_vm.dart';

class CheckoutPayment extends ConsumerWidget {
  const CheckoutPayment({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
      enableBack: true,
     title: Text("Checkout",style: Theme.of(context).textTheme.titleMedium,),
     
     ),
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
        Row(children: [
            Text("Order",style: Theme.of(context).textTheme.labelMedium,),
            Spacer(),
            Text("₹${ref.watch(checkoutCartVmProvider).value?.purchaseItems?.totalPrice??0}",style: Theme.of(context).textTheme.labelMedium)
          ],),
          Row(children: [
            Text("shipping",style: Theme.of(context).textTheme.labelMedium,),
            Spacer(),
            Text("₹${ref.watch(checkoutCartVmProvider).value?.purchaseItems?.shippingCharge??0}",style: Theme.of(context).textTheme.labelMedium,)
          ],),
          Row(children: [
            Text("Total",style: Theme.of(context).textTheme.bodyLarge,),
            Spacer(),
            Text("₹${ref.watch(checkoutCartVmProvider).value?.purchaseItems?.grandTotal??0}",style: Theme.of(context).textTheme.bodyLarge,)
          ],),
           SizedBox(height: 2,),
            SizedBox(
            width: MediaQuery.of(context).size.width-40,
            child: Divider(color: ColorConstants.greyColor,thickness: .5,)),
            SizedBox(height: 2,),
          Text("Payment",style: Theme.of(context).textTheme.titleMedium,),
          Card(
             shape: RoundedRectangleBorder(
    side: BorderSide(
      color: ColorConstants.primary, 
      width: 1.0,
    ),
    borderRadius: BorderRadius.circular(12.0),
  ),
            color: ColorConstants.cardGrey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:  10.0,vertical: 3),
              child: Row(
                children: [
                  Image.asset("assets/logos/stripe.png",height: 50,width: 40,)
                ,
                  Spacer(),
                  Text("**********************6789")
                ],
              ),
            ),
          ),
          PopupMenuButton(
              elevation: 0,
              color: Colors.black.withOpacity(.7),
              tooltip: "", 
              itemBuilder:
                  (context) => [
                    const PopupMenuItem(
                      enabled: false,
                      child: Text(
                        "Coming soon",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
              child: Card(
            color: ColorConstants.cardGrey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:  10.0,vertical: 3),
              child: Row(
                children: [
                  Image.asset("assets/logos/apple.png",height: 50,width: 40,)
                ,
                  Spacer(),
                  Text("**********************6866")
                ],
              ),
            ),
          )),
          CustomButton(onPressed: () async {
            await CheckoutRepository.createPuchase(ref.watch(checkoutCartVmProvider).value??PurchaseModel()).then((v){
              if(v.status==OperationStatus.success) showDialog(context: context, builder: (ctx)=>PaymentSuccess());
              else showDialog(context: context, builder: (ctx)=>CustomAlertDialogue(title: v.title,description:v.message));
            });
            
          },text:"Continue",borderRadius: 4,)
       ],),
     ),
     );
  }
}