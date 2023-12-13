import 'package:eminonu_guide/pages/Emnioi.dart';
import 'package:eminonu_guide/pages/Kapalicarsi.dart';
import 'package:eminonu_guide/pages/Karakoy.dart';
import 'package:eminonu_guide/pages/Resturnet.dart';
import 'package:eminonu_guide/pages/Sirkeci.dart';
import 'package:eminonu_guide/pages/SultanAhmad.dart';
import 'package:flutter/material.dart';

final List<String> imagess = [
  'images/eminonu.jpg',
  'images/kadikoy.jpg',
  'images/uskudar.jpg',
  'images/uskudar.jpg',
  'images/uskudar.jpg',
  'images/uskudar.jpg',
  'images/car.jpg',
];

List<String> titlesd = [
  'karaköy',
  'Kadikoy',
  'Sultan Ahmad',
  'Kapalı Çarşı',
  'Karaköy',
  'Sirkeci',
  'Resturent',
];

List<Widget> _pages = const [
  Emnuioi(),
  SultanAhmad(),
  Kapalicarsi(),
  Karakoy(),
  Sirkeci(),
  Resturent(),
];
