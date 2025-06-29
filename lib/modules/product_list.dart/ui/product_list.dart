import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/common_widgets/custom_search_field.dart';
import 'package:shopywell/common_widgets/cutom_app_bar.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/modules/home_screen/products/vm/product_list_vm.dart';
import 'package:shopywell/modules/home_screen/ui/elements/product_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductList extends ConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
  
    return  Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              Material(elevation:2,color: Colors.transparent,shadowColor: Colors.transparent, child: CustomTextFieldNew(borderRadius: 20, hintText: "search any product",prefixIcon: Icon(Icons.search,color: ColorConstants.greyColor,),suffixIcon: Icon(Icons.mic,color: ColorConstants.greyColor,),))
            ,Row(
              children: [
                Text("${ref.watch(productListVmProvider).value?.length??0} Items",style: Theme.of(context).textTheme.titleMedium,),
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
            Wrap(spacing: 10,runSpacing: 10,
              children:
              ref.watch(productListVmProvider).when(data: (data){
                return data.map((e)=>InkWell(
              onTap: ()=>context.pushNamed(RoutePath.productDetail.name),
              child: ProductCard(product: e,))).toList();
              }, error: (e,s)=>[Text("Error loading products !!")], loading: ()=>[CircularProgressIndicator(color: ColorConstants.primary,)])
              
            )
           
            ])));
  }
}