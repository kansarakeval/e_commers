import 'package:e_commers/screen/detail/view/detail_screen.dart';
import 'package:e_commers/screen/home/view/home_screen.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> app_routes={
  '/': (context) => const HomeScreen(),
  'detail': (context)=> DetailScreen(),
};