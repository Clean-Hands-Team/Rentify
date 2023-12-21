import 'package:flutter/material.dart';
import 'package:rentify/main.dart';
import 'Profilim_pages.dart';
import 'Mesajlarim_Kutusu.dart';
import 'ilkSayfa.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Favorilerim.dart';

class TabbBarRepository extends ChangeNotifier{

  final List<Widget> sayfalar = [
    const ilkSayfa(),
    Mesajlarim_Kutusu(),
    Favori(),
    Profilim(),
  ];
  int selectedIndex = 0;

  selectedItemConvert(int value){
    selectedIndex = value;
    notifyListeners();
  }


}

final TabbBarProvider =  ChangeNotifierProvider((ref) => TabbBarRepository());