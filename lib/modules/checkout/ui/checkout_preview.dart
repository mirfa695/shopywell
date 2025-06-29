import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/common_widgets/custom_button.dart';
import 'package:shopywell/common_widgets/cutom_app_bar.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/models/purchase_model.dart';
import 'package:shopywell/modules/checkout/ui/elements/product_preview_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopywell/modules/checkout/vm/checkout_cart_vm.dart';

class CheckoutPreview extends ConsumerWidget {
  const CheckoutPreview({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(enableBack: true,
     title: Text("Shopping Bag",style: Theme.of(context).textTheme.titleMedium,),
     
     ),
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: SingleChildScrollView(
         child: Column(
          spacing: 10,children: [
            ...ref.watch(checkoutCartVmProvider).value?.purchaseItems?.map((e){
              return ProductPreviewCard(cartItem: e,);
            }).toList()??[]
            ,
            Row(
              children: [
                Icon(Icons.countertops_outlined),
                Text("Apply Coupons",style: Theme.of(context).textTheme.displaySmall,),
                Spacer(),
                Text("select",style: TextStyle(color: ColorConstants.primary,fontSize: 15),)
              ],
            ),
            
              SizedBox(
              width: MediaQuery.of(context).size.width-40,
              child: Divider(color: ColorConstants.greyColor,thickness: .5,)),
              SizedBox(height: 2,),
            Text("Order payment Details",style: Theme.of(context).textTheme.titleMedium,),
            Row(children: [
              Text("Order amount"),
              Spacer(),
              Text("₹${ref.watch(checkoutCartVmProvider).value?.purchaseItems?.totalPrice??0}",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),)
            ],),
            Row(children: [
              Text("Delivery fee"),
              Spacer(),
              Text("${ref.watch(checkoutCartVmProvider).value?.purchaseItems?.shippingCharge??0}",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorConstants.primary),)
            ],),
            Row(children: [
              Text("Discount"),
              Spacer(),
              Text("₹0")
            ],),
              SizedBox(height: 2,),
              SizedBox(
              width: MediaQuery.of(context).size.width-40,
              child: Divider(color: ColorConstants.greyColor,thickness: .5,)),
              SizedBox(height: 2,),
              Row(children: [
              Text("Order total",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),),
              Spacer(),
              Text("₹${ref.watch(checkoutCartVmProvider).value?.purchaseItems?.grandTotal??0}",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),)
            ],),
              SizedBox(height: 2,),
              SizedBox(
              width: MediaQuery.of(context).size.width-40,
              child: Divider(color: ColorConstants.greyColor,thickness: .5,)),
              SizedBox(height: 2,),
            Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("₹${ref.watch(checkoutCartVmProvider).value?.purchaseItems?.grandTotal??0}",style: Theme.of(context).textTheme.titleMedium,),
                    Text("view details",style: TextStyle(color: ColorConstants.primary),)
                  ],
                ),
                Spacer(),CustomButton(borderRadius: 4, onPressed: ()=>context.pushNamed(RoutePath.paymentProcess.name),text:"Procceed to payment",)
              ],
            )
          ],
         ),
       ),
     ),
     );
  }
}