import 'package:flutter/material.dart';
import 'package:invoice_app/screen/additem/additem_screen.dart';
import 'package:invoice_app/screen/home/home_screen.dart';
import 'package:invoice_app/screen/inoice/invoice_screen.dart';
import 'package:invoice_app/screen/personal_details.dart';

Map<String,WidgetBuilder>  app_routes ={
  '/':(context) => const HomeScreen(),
  'detail':(context) => const DetailScreen(),
  'item':(context) => const ItemScreen(),
  'invoice':(context) => const InvoiceScreen(),
};