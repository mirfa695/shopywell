import 'package:shopywell/constants/color_constants.dart';
import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.secondary,
        
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Column(spacing: 5,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Trending products",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white,fontSize: 16),)
                ,Row(
                  children: [
                    Icon(Icons.calendar_month,color: Colors.white,),
                    Text("22h 55m 20s remaining",style: TextStyle(color: Colors.white),)
                  ],
                )
              ],
            ),
            Spacer(),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(spacing: 3, children: [Text("View all",style: TextStyle(color: Colors.white),),Icon(Icons.arrow_forward,color: Colors.white,)],),
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}