import 'package:flutter/material.dart';

import './home/home_screen.dart';
import './constants.dart';

void main() => runApp(MaterialApp(
  title: "微信",
  theme: ThemeData.light().copyWith(
    primaryColor: Color(AppColors.AppBarColor),
  ),
  home: HomeScreen(),
));

