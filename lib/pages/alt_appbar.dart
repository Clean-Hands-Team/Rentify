import 'package:flutter/material.dart';
import 'package:rentify/constants//RenkPages.dart';
import 'package:rentify/main.dart';
import 'Profilim_pages.dart';
import 'package:rentify/repository/yakindakiler_repository.dart';
import 'Mesajlarim_Kutusu.dart';
import 'SayfalarDöngüsü.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class alt_appbar extends ConsumerStatefulWidget {
  @override
  _alt_appbarState createState() => _alt_appbarState();
}

class _alt_appbarState extends ConsumerState<alt_appbar> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          currentIndex: ref.watch(TabbBarProvider).selectedIndex,
          backgroundColor: Renkler.FF235265,
          onTap: (int value){
            ref.watch(TabbBarProvider).selectedItemConvert(value);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                  height: 14, child: Icon(Icons.home)
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
      body:ref.watch(TabbBarProvider).sayfalar[ref.watch(TabbBarProvider).selectedIndex] ,
    );
  }
}
