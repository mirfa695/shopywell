import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:shopywell/enums/route_enums.dart';

class CommonIntroPage extends StatelessWidget {
  final String? image;
  final String? title;
  final String? description;
  final int? index;
  const CommonIntroPage({super.key,this.image,this.title,this.description,this.index});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorConstants.bgColor,

      body:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Row(children: [
                             RichText(text: TextSpan(
                             text:index.toString(),
                             style: Theme.of(context).textTheme.bodyLarge,
                             children: [
                         TextSpan(text: '/3', style: TextStyle(color: ColorConstants.greyColor, fontWeight: FontWeight.bold)),
                              ],
                           ),),Spacer(),InkWell(
                            onTap: (){
                              var box = Hive.box('firstTimeData');
                              box.put('isFirstTime', false);
                              context.goNamed(RoutePath.login.name);},
                            child: Text("Skip",style: Theme.of(context).textTheme.bodyLarge,))]),
                 Spacer(),
               image!=null? Image.asset(image!,height: 300,width: 300,fit: BoxFit.cover,):SizedBox.shrink(),
                Text(title?? "Not found!",style: Theme.of(context).textTheme.headlineMedium,),
                Text(description??"",style: Theme.of(context).textTheme.labelSmall,textAlign: TextAlign.center,),
                Spacer()
              ],
                     
                  ),
          ),
    );
  }
}