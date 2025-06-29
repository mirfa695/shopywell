import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/common_widgets/custom_button.dart';
import 'package:shopywell/common_widgets/cutom_app_bar.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/models/pricing_model.dart';
import 'package:shopywell/models/product_model.dart';
import 'package:shopywell/modules/cart/repository/cart_repository.dart';
import 'package:shopywell/modules/home_screen/products/vm/product_detail_vm.dart';
import 'package:shopywell/modules/home_screen/ui/elements/product_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsScreen extends HookConsumerWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    ProductModel? product=ref.watch(productDetailVmProvider).value;
    final selectedVariant=useState(product?.pricing.firstOrNull?.variant) ;
    return Scaffold(
      appBar: CustomAppBar(enableBack: true,
      trailering: InkWell(
        onTap: ()=>context.pushNamed(RoutePath.cartPage.name),
        child: Icon(Icons.shopping_cart_outlined,color: Colors.black,)),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        
         SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width-40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage(product?.image?? "https://cdn-icons-png.flaticon.com/512/13434/13434972.png"),fit: BoxFit.cover)),
              ),
              Text(selectedVariant.value??"",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 16),),
              Row(spacing: 10,
                children: [
                  ...product?.pricing.map((e)=>Container(decoration: BoxDecoration(color:e.variant==selectedVariant.value?ColorConstants.secondary :Colors.white, border: Border.all(color: ColorConstants.secondary),borderRadius: BorderRadius.circular(4)),child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(e.variant??'',style: TextStyle(color:e.variant==selectedVariant.value?Colors.white: ColorConstants.secondary ),),
              ),)).toList()??[]
              
                ],
              ),
              Text(product?.productName??'',style: Theme.of(context).textTheme.titleMedium,),
              Text(product?.overview??""),
              Row(spacing: 3,
                children: [
                  for(int i=0;i<5;i++)
                  Icon(Icons.star,color:i < (product?.rating?.floor()??0)? Colors.amber:ColorConstants.greyColor,),
          
                ],
              ),
              Text("₹${product?.pricing.where((e)=>e.variant==selectedVariant.value).firstOrNull?.price??0}/-",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),),
              Text("Product Details",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 15,fontWeight: FontWeight.w600),),
              Text(product?.description??"")
             ,Row(mainAxisAlignment: MainAxisAlignment.start,
             spacing: 5,
               children: [
                 Expanded(child: CustomButton(borderRadius: 4, onPressed: () async {
                  await CartRepository.addToCart(product??ProductModel(),PricingModel(variant:selectedVariant.value,price: product?.pricing.where((e)=>e.variant==selectedVariant.value).firstOrNull?.price??0 ) ).then((v){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.white,
                          content: Text(
                            v.message??"",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          duration: Duration(seconds: 2),
                        ),
                      );
                  });
                 },text: "Add to Cart",icon: Icons.shopping_cart,textColor: Colors.white,iconColor: Colors.white,backgroundColor: ColorConstants.secondary,)),
                  Expanded(child: CustomButton(borderRadius: 4, onPressed: ()=>context.pushNamed(RoutePath.checkoutFill.name),text: "Buy Now",icon: Icons.shopping_bag,textColor: Colors.white,iconColor: Colors.white,)),
               ],
             ),
             Row(
                children: [
                  Text("Similiar To",style: Theme.of(context).textTheme.titleMedium,),
                 Spacer(),
                 Card(child: Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: Row(
                    spacing: 5,
                    children: [
                      Text("sort",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black),),
                      Icon(Icons.sort,size: 15,)
                    ],
                   ),
                 ),),
                 Card(child: Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: Row(
                    spacing: 5,
                    children: [
                      Text("filter",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black),),
                      Icon(Icons.filter_alt,size: 15,)
                    ],
                   ),
                 ),)
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    if(product?.similiarProducts.isNotEmpty==true)
                  ...product?.similiarProducts.map((e)=>ProductCard(product: e,)).toList()??[]
                  else Text("No similiar items found!",style: Theme.of(context).textTheme.labelMedium,)
                ],),
              )
            ],
          ),
        ),
      ),
      
      );
  }
}