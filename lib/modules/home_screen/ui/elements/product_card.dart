import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/models/product_model.dart';
import 'package:shopywell/modules/home_screen/products/vm/product_detail_vm.dart';

class ProductCard extends ConsumerWidget {
  final ProductModel? product; 
  const ProductCard({super.key,this.product});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return InkWell(
      onTap: () async {
       await ref.read(productDetailVmProvider.notifier).getProductModel(product:  product);
        context.pushNamed(RoutePath.productDetail.name);
      },
      child: SizedBox(
        width:( MediaQuery.of(context).size.width/2)-20,
        child: Card(
          
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, spacing: 2, children: [
              Image.network(product?.image?? "https://cdn-icons-png.flaticon.com/512/13434/13434972.png",height: 150,width: 200,fit: BoxFit.cover,),
              Text(product?.productName??"Name unavailable",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 14),),
              Text(product?.overview?? ""),
              Text("₹"+ (product?.pricing.firstOrNull?.price.toString()?? "₹0"+"/-"),style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14,fontWeight: FontWeight.w600),),
              Row(spacing: 5,
                children: [
                  for(int i=0;i<5;i++)
                  Icon(Icons.star,color:i < (product?.rating?.floor()??0) ? Colors.yellow:ColorConstants.greyColor,)
                ],
              )
            ],
            
            ),
          ),
        ),
      ),
    );
  }
}