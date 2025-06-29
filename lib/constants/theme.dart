import 'package:shopywell/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightMood => ThemeData(
    useMaterial3: true,
      iconTheme:const IconThemeData(color:Colors.black),
      buttonTheme: ButtonThemeData(buttonColor:  ColorConstants.primary),
      scrollbarTheme: ScrollbarThemeData(thumbColor: MaterialStateProperty.all<Color>(Colors.grey), trackColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 25, 47, 174)), trackVisibility: MaterialStateProperty.all<bool>(false)),
      inputDecorationTheme:  InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        labelStyle:TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.black),
        helperStyle: TextStyle(color:   Colors.black),
        iconColor:  Colors.black,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1),
          borderRadius:  BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:ColorConstants.darkGrey  , width: 1),
          borderRadius:  BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:  ColorConstants.darkGrey, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(color:Colors.grey, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      primaryColor:ColorConstants.primary,
      textTheme: TextTheme(
    headlineLarge: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.black,),
    headlineMedium: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800,color: Colors.black,),
    headlineSmall: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black,),
    
    bodyMedium: const TextStyle(fontSize: 13, color: Colors.black),
    bodySmall: const TextStyle(fontSize: 14, color: Colors.black),
    labelMedium:TextStyle(fontSize: 16, color: ColorConstants.darkGrey,fontWeight: FontWeight.w400) ,
    labelSmall:TextStyle(fontSize: 14, color: ColorConstants.darkGrey,fontWeight: FontWeight.w400) ,
    titleLarge: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800,color: Colors.black,),
    titleMedium: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black,),
    titleSmall: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black,),
    bodyLarge: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black),
    displaySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black,)
  ),
      // Card Theme
      cardTheme: CardTheme(color:Colors.white, elevation: 1, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), side: const BorderSide(color: Colors.transparent))),
      // Background Color
      scaffoldBackgroundColor: Colors.grey[100],
      colorScheme: ColorScheme.fromSwatch().copyWith(
        scrim: Colors.black,
        background: Colors.grey[100],
        primary: ColorConstants.primary,
        secondary: ColorConstants.secondary,
        surface: ColorConstants.bgColor,
        onPrimary: ColorConstants.primary,
        onSecondary: ColorConstants.secondary,
        onSurface: Colors.white,
        onBackground: const Color.fromARGB(255, 71, 70, 70),
        brightness: Brightness.light,
        error: const Color.fromARGB(255, 98, 11, 4),
        onError: const Color.fromARGB(255, 189, 15, 3),
      ));}

