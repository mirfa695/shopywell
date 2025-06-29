import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopywell/common_widgets/custom_button.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/helpers.dart/hive_helper.dart';

class HomeSplashScreen extends StatelessWidget {
  const HomeSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        decoration: BoxDecoration(
        // gradient: LinearGradient(colors: [Colors.black.withOpacity(.4),Colors.transparent],begin: Alignment.bottomCenter,end: Alignment.topCenter),
          image: DecorationImage(image: AssetImage("assets/images/fashion.png",),fit: BoxFit.cover)
        ),
        child: Stack(
          children: [
            Container(
              height: double.infinity,width: double.infinity,
              decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black.withOpacity(.8),Colors.black.withOpacity(.1)],begin: Alignment.bottomCenter,end: Alignment.topCenter,stops: [0.0, 0.33],), ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.end,
                      spacing: 20,
                      children: [
                      Text("You want Authentic, here you go!",style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white,),textAlign: TextAlign.center,)
                      ,Text("Find it here, buy it now!",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),)
                    ,CustomButton(onPressed: (){
                      HiveHelper.editHive(MapEntry("hasSplashed", true));
                      context.pushNamed(RoutePath.homeScreen.name);},text: "Get Started",),
                    SizedBox(height: 30,)
                    ],),
            ),
          ],
        ),
      )
    
      
      
    );
  }
}