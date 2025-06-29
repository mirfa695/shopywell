import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:shopywell/common_widgets/cutom_app_bar.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/modules/cart/ui/cart_page.dart';
import 'package:shopywell/modules/home_screen/ui/home_screen.dart';
import 'package:shopywell/modules/product_list.dart/ui/product_list.dart';

class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    final screens = [
      const HomeScreen(),
      const ProductList(),
      const CartPage(),
      const ProductList(),
      const Scaffold(),
    ];

    return Scaffold(
      appBar: CustomAppBar(leading: Icon(Icons.menu,color: Colors.black,), title: Image(width: 100,height: 30, image: AssetImage("assets/logos/app_logo.png")),
      trailering: InkWell(
       // onTap: () async =>await ProductCreateDemo.createProducts(),
        child: CircleAvatar(backgroundColor: ColorConstants.secondary, backgroundImage: NetworkImage("https://mir-s3-cdn-cf.behance.net/user/276/eebdd01830865.6042674a3a302.png"),)),
      ),
      body: screens[selectedIndex.value],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        barColor: Colors.white,
        controller: FloatingBottomBarController(initialIndex: 0),
        bottomBar: [
          BottomBarItem(
            icon: const Icon(Icons.home_outlined, size: 26),
            iconSelected: const Icon(Icons.home, color: ColorConstants.primary, size: 26),
            title: "Home",
            titleStyle: TextStyle(
              color: selectedIndex.value == 0 ? ColorConstants.primary : Colors.black,
              fontWeight: FontWeight.w500,
            ),
            dotColor: ColorConstants.primary,
            onTap: (value) => selectedIndex.value = 0,
          ),
          BottomBarItem(
            icon: const Icon(Icons.shopping_bag, size: 26),
            iconSelected: const Icon(Icons.shopping_bag, color: ColorConstants.primary, size: 26),
            title: "Products",
            titleStyle: TextStyle(
              color: selectedIndex.value == 1 ? ColorConstants.primary : Colors.black,
              fontWeight: FontWeight.w500,
            ),
            dotColor: ColorConstants.primary,
            onTap: (value) => selectedIndex.value = 1,
          ),
          BottomBarItem(
            icon: const Icon(Icons.search, size: 26),
            iconSelected: const Icon(Icons.search, color: ColorConstants.primary, size: 26),
            title: "Search",
            titleStyle: TextStyle(
              color: selectedIndex.value == 3 ? ColorConstants.primary : Colors.black,
              fontWeight: FontWeight.w500,
            ),
            dotColor: ColorConstants.primary,
            onTap: (value) => selectedIndex.value = 3,
          ),
          BottomBarItem(
            icon: const Icon(Icons.settings_outlined, size: 26),
            iconSelected: const Icon(Icons.settings, color: ColorConstants.primary, size: 26),
            title: "Setting",
            titleStyle: TextStyle(
              color: selectedIndex.value == 4 ? ColorConstants.primary : Colors.black,
              fontWeight: FontWeight.w500,
            ),
            dotColor: ColorConstants.primary,
            onTap: (value) => selectedIndex.value = 4,
          ),
        ],
        bottomBarCenterModel: BottomBarCenterModel(
          centerBackgroundColor: ColorConstants.primary,
          centerIcon: FloatingCenterButton(
            child: GestureDetector(
              onTap: () {
                selectedIndex.value = 2;
               
              },
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
          centerIconChild: [],
        ),
      ),
    );
  }
}
