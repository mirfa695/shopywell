import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final Widget? trailering;

  final bool? enableBack;
  const CustomAppBar({super.key,this.enableBack, this.title,this.leading,this.trailering});
  @override
  Widget build(BuildContext context) {
    return 
    PreferredSize(
    preferredSize: Size.fromHeight(kToolbarHeight),
    child: SafeArea(
      child: AppBar(
         titleSpacing: 0, // Removes padding around the title
  leadingWidth: 0,
         automaticallyImplyLeading: false, 
        title:Container(
      height: preferredSize.height,
      padding: const EdgeInsets.symmetric(horizontal: 16),
     color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(enableBack==true) IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
          leading??SizedBox.shrink(),
        title ?? SizedBox.shrink(),
          trailering??SizedBox.shrink(),
        ],
      ),
    ),
        // Other AppBar properties
      ),
    ),
  );
    
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
