import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/modules/checkout/ui/checkout_fill.dart';
import 'package:shopywell/modules/checkout/ui/checkout_payment.dart';
import 'package:shopywell/modules/checkout/ui/checkout_preview.dart';
import 'package:shopywell/modules/cart/ui/cart_page.dart';
import 'package:shopywell/modules/home_screen/ui/home_splash_screen.dart';
import 'package:shopywell/modules/intro/ui/intro_pageview.dart';
import 'package:shopywell/modules/login_register/ui/forget_password.dart';
import 'package:shopywell/modules/login_register/ui/login_screen.dart';
import 'package:shopywell/modules/login_register/ui/registration_screen.dart';
import 'package:shopywell/modules/main_screen/main_screen.dart';
import 'package:shopywell/modules/product_details/ui/product_details_screen.dart';
import 'package:shopywell/modules/product_list.dart/ui/product_list.dart';
import 'package:go_router/go_router.dart';
class AppRouter {
static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => getInitialWidget(),
    ),
  
    GoRoute(
      path:'/${RoutePath.login.name}',
      name: RoutePath.login.name ,
      builder: (context, state) => const LoginScreen(),
    ),
      GoRoute(
      path: '/${RoutePath.register.name}',
      name: RoutePath.register.name ,
      builder: (context, state) =>  RegistrationScreen(),
    ),
     GoRoute(
      path: '/${RoutePath.forgotPassword.name}',
      name: RoutePath.forgotPassword.name ,
      builder: (context, state) => const ForgetPassword(),
    ),
    ...homeRoutes
  ],
);

static  List<GoRoute> homeRoutes= [
GoRoute(
      path: '/${RoutePath.homeSplash.name}',
      name: RoutePath.homeSplash.name ,
      builder: (context, state) => homeWidget(),
    ),
    GoRoute(
      path: '/${RoutePath.homeScreen.name}',
      name: RoutePath.homeScreen.name ,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/${RoutePath.productList.name}',
      name: RoutePath.productList.name ,
      builder: (context, state) => const ProductList(),
    ),
    GoRoute(
      path: '/${RoutePath.productDetail.name}',
      name: RoutePath.productDetail.name ,
      builder: (context, state) => const ProductDetailsScreen(),
    ),
     GoRoute(
      path: '/${RoutePath.checkoutFill.name}',
      name: RoutePath.checkoutFill.name ,
      builder: (context, state) => const CheckoutFill(),
    ),
     GoRoute(
      path: '/${RoutePath.cartPage.name}',
      name: RoutePath.cartPage.name ,
      builder: (context, state) => const CartPage(navigate: true,),
    ),
     GoRoute(
      path: '/${RoutePath.checkPreview.name}',
      name: RoutePath.checkPreview.name ,
      builder: (context, state) => const CheckoutPreview(),
    ),
     GoRoute(
      path: '/${RoutePath.paymentProcess.name}',
      name: RoutePath.paymentProcess.name ,
      builder: (context, state) => const CheckoutPayment(),
    )
];



static Widget getInitialWidget(){
  var box = Hive.box('firstTimeData');
  bool hasLoggedIn = box.get('isLoggedIn', defaultValue: false);
  bool firstTime = box.get('isFirstTime', defaultValue: true);
 if(hasLoggedIn){
  return MainScreen();
 }else if(!firstTime){
  return LoginScreen();
 }else{
  return IntroPageview();
 }
}
static Widget homeWidget(){
  var box = Hive.box('firstTimeData');
  bool hasSplashed = box.get('hasSplashed', defaultValue: false);
  if(hasSplashed) return MainScreen();else return HomeSplashScreen();
}
}




