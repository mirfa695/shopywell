import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Image.network("https://img.freepik.com/premium-vector/special-offer-banner-red-yellow-flag-shape_78946-860.jpg?semt=ais_hybrid&w=740",height: 80,width: 80,),
            Spacer(),
            Column(spacing: 5,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Special offers 😲",style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 16),)
                ,SizedBox(
                  width: 200,
                  child: Text("We make sure you get the offer you need at best prices",))
              ],
            ),
            
           
          ],
        ),
      ),
    );
  }
}