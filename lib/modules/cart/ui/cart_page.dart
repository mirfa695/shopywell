import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/common_widgets/custom_button.dart';
import 'package:shopywell/common_widgets/cutom_app_bar.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/modules/cart/vm/cart_list_vm.dart';
import 'package:shopywell/modules/checkout/ui/elements/product_checkout_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopywell/modules/checkout/vm/address_list_vm.dart';
import 'package:shopywell/modules/checkout/vm/checkout_cart_vm.dart';

class CartPage extends HookConsumerWidget {
  final bool? navigate;
  const CartPage({super.key,this.navigate});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
  final selectedAddress=useState(ref.watch(addressListVmProvider).value?.firstOrNull); 
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.97),
      appBar:navigate==true? CustomAppBar(enableBack: true,
     title: Text("Checkout",style: Theme.of(context).textTheme.titleMedium,),
     ):null,body: 
     Padding(
       padding: const EdgeInsets.all(20.0),
       child: ListView(
        // child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        //  spacing: 10,
          children: [
          Row(
            children: [
              Icon(Icons.location_on_rounded),
              Text("Delivery Address",style: Theme.of(context).textTheme.headlineSmall,)
            ],
          ),
          ref.watch(addressListVmProvider).when(data: (data){
            selectedAddress.value=data.firstOrNull;
         return Column(
          children: [
             for(int i=0;i<data.length;i++)
          Row(
            children: [
              Expanded(flex: 3,
                child: InkWell(
                  onTap: ()=>selectedAddress.value=data[i],
                  child: SizedBox(
                    height: 80,
                    child: Card(
                     shape: RoundedRectangleBorder(
             side: BorderSide(
               color:selectedAddress.value==data[i]?ColorConstants.primary:Colors.transparent, // border color
               width: .8,         // border width
             ),
             borderRadius: BorderRadius.circular(12.0),
           ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("Address:"),
                          Text("${data[i].address??"N/A"}, ${data[i].city??"N/A"}, ${data[i].state??"N/A"} ,${data[i].country??"N/A"},${data[i].pinode??"N/A"}")
                        ],),
                      ),
                    ),
                  ),
                ),
              ),
           if(i==0)  Expanded(flex: 1,
                child: InkWell(
                  onTap: ()=>context.pushNamed(RoutePath.checkoutFill.name),
                  child: SizedBox(height: 80,
                    child: Card(
                      child: Icon(Icons.add_circle_outline_sharp),
                    ),
                  ),
                ),
              )
            ],
          )
          ],
         );
         
          }, error: (e,s)=>Text("An error occurred !",style: Theme.of(context).textTheme.labelMedium,), loading: ()=>CircularProgressIndicator(color: ColorConstants.primary,))
         ,
         SizedBox(height: 10,),
          Text("Shopping list",style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height:  10),
          ref.watch(cartListProvider).when(data: (data){
            return Column(spacing: 10,
              children:data.map((e)=>ProductCheckoutCard(cartItem:e,)).toList()??[],
            ) ;
          }, error: (e,s)=>Text("An error occured !",style: Theme.of(context).textTheme.labelMedium,), loading: ()=>CircularProgressIndicator(color: ColorConstants.primary,))
          ,Spacer(),
           if( ref.watch(cartListProvider).value?.isNotEmpty==true) CustomButton(onPressed: (){
        if(selectedAddress.value==null)context.pushNamed(RoutePath.checkoutFill.name);else {
          ref.read(checkoutCartVmProvider.notifier).setPurchaseModel(cartItems: ref.watch(cartListProvider).value,address: selectedAddress.value);
          context.pushNamed(RoutePath.checkPreview.name);};
         },text: "Checkout",borderRadius: 4,)
         ],),
       ),
     )
     ;
  }
}