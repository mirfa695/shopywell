import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DealOfDayCard extends StatelessWidget {
  const DealOfDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.blueColor,
        
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Column(spacing: 5,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Deal of the Day",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white,fontSize: 16),)
                ,Row(
                  children: [
                    Icon(Icons.timer,color: Colors.white,),
                    Text("22h 55m 20s remaining",style: TextStyle(color: Colors.white),)
                  ],
                )
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () => context.pushNamed(RoutePath.productList.name),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(spacing: 3, children: [Text("View all",style: TextStyle(color: Colors.white),),Icon(Icons.arrow_forward,color: Colors.white,)],),
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}