import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/common_widgets/custom_search_field.dart';
import 'package:shopywell/common_widgets/cutom_app_bar.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/modules/home_screen/product_elements/vm/ads_vm.dart';
import 'package:shopywell/modules/home_screen/product_elements/vm/category_vm.dart';
import 'package:shopywell/modules/home_screen/products/vm/products_home_preview.dart';
import 'package:shopywell/modules/home_screen/ui/elements/couresol_slider.dart';
import 'package:shopywell/modules/home_screen/ui/elements/deal_of_day_card.dart';
import 'package:shopywell/modules/home_screen/ui/elements/offer_card.dart';
import 'package:shopywell/modules/home_screen/ui/elements/offer_product.dart';
import 'package:shopywell/modules/home_screen/ui/elements/product_card.dart';
import 'package:shopywell/modules/home_screen/ui/elements/trending_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return 
      // appBar: CustomAppBar(leading: Icon(Icons.menu,color: Colors.black,), title: Image(width: 100,height: 30, image: AssetImage("assets/logos/app_logo.png")),
      // trailering: InkWell(
      //  // onTap: () async =>await ProductCreateDemo.createProducts(),
      //   child: CircleAvatar(backgroundColor: ColorConstants.secondary, backgroundImage: NetworkImage("https://mir-s3-cdn-cf.behance.net/user/276/eebdd01830865.6042674a3a302.png"),)),
      // ),
     Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              Material(elevation:2,color: Colors.transparent,shadowColor: Colors.transparent, child: CustomTextFieldNew(borderRadius: 20, hintText: "search any product",prefixIcon: Icon(Icons.search,color: ColorConstants.greyColor,),suffixIcon: Icon(Icons.mic,color: ColorConstants.greyColor,),))
            ,Row(
              children: [
                Text("All featured",style: Theme.of(context).textTheme.titleMedium,),
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
            ref.watch(categoryVmProvider).when(data: (data){
             return SingleChildScrollView(
               child: Row(spacing: 10,
                children: [
                           ...data.map((e){
                           return Column(
                children: [
                  CircleAvatar(backgroundColor: ColorConstants.primary, backgroundImage: NetworkImage(e.image??"https://png.pngtree.com/png-vector/20221125/ourmid/pngtree-no-image-available-icon-flatvector-illustration-picture-coming-creative-vector-png-image_40968940.jpg"),radius: 30,),
                  Text(e.categoryName??"")
                ],
                           );
                          })
                ],
                           ),
             );
            }, error: (Object error, StackTrace stackTrace) =>SizedBox.shrink(),loading: ()=>CircularProgressIndicator(color: ColorConstants.primary,)),
            ref.watch(adsVmProvider).when(data: (data){
              return  CouresolSlider(images: data,);
            }, error: (e,s)=>SizedBox.shrink(), loading: ()=>CircularProgressIndicator(color: ColorConstants.primary,))
         
            ,DealOfDayCard(),
           
              ref.watch(productsHomePreviewProvider).when(data: (data){
                return  SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [ ...data.map((e)=> ProductCard(product: e,)).toList()??[]]));
              }, error: (e,s)=>Text("! Error on getting products !",style: Theme.of(context).textTheme.labelSmall,), loading: ()=>CircularProgressIndicator(color: ColorConstants.primary,))
              ,
            OfferCard(),
            Image(image: AssetImage("assets/images/offer.png")),
            TrendingCard(),
            OfferProduct()
            ],
          ),
        ),
      );
    
  }
}