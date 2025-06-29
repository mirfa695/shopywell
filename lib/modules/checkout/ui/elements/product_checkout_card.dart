import 'package:shopywell/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:shopywell/models/cart_item.dart';

class ProductCheckoutCard extends StatelessWidget {
  final CartItem? cartItem;
  const ProductCheckoutCard({super.key,this.cartItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width-20,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(spacing: 5,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
              spacing: 8,
                children: [
                  Container(
                    height: 100,width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage(cartItem?.product?.image?? "https://cdn-icons-png.flaticon.com/512/13434/13434972.png"))),)
                 , Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                    children: [
                      Text(cartItem?.product?.productName??"Name unavailable",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 14),),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 3,
                          children: [
                            Text("Variations: "),
                           ...cartItem?.product?.pricing.map((e){
                              return Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: .2)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical:  3.0,horizontal: 5),
                              child: Text(e.variant??""),
                            ),
                            );
                            }).toList()??[]
                            
                          ],
                        ),
                      ),
                      Row(spacing: 3,
                        children: [
                          Text(cartItem?.product?.rating.toString()??"0"),
                          for(int i=0;i<5;i++)
                          Icon(Icons.star,color:i < (cartItem?.product?.rating?.floor()??0) ? Colors.amber:ColorConstants.greyColor,size: 14,)
                        ],
                      ),
                      Text("₹ ${cartItem?.price??"0"}/-",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 15),)
                    ],
                  )
                ],
              ),
             
                SizedBox(
                width: MediaQuery.of(context).size.width-40,
                child: Divider(color: ColorConstants.greyColor,thickness: .5,)),
               Row(
                children: [
                  Text("Total Order:"),
                  Spacer(),
                  Text("₹${cartItem?.totalPrice}",style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 13),)
                ],
               ),
               SizedBox(height: 3,)
            ],
          ),
        ),
      ),
    );
  }
}