import 'package:flutter/cupertino.dart';

import '../../constant/home/home.dart';
import '../../constant/reservation/reservation.dart';
import '../../constant/search/search.dart';
import '../../widght/home_page/home_page.dart';


Map<String , Widget Function(BuildContext)> routs = {

  // "/HomePage" : (context) =>  HomePage(),
  "/Home" : (context) =>  Home(),
  "/Search" : (context) => Search(),
  "/Reservation" : (context) =>  Reservation(),
  "/HomePage" : (context) => Home(),

};