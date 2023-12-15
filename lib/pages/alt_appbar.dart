import 'package:flutter/material.dart';
import 'package:rentify/RenkTanimlama/RenkPages.dart';
import 'package:rentify/main.dart';
import 'Profilim_pages.dart';
import 'package:rentify/repository/yakindakiler_repository.dart';
import 'Mesajlarim_Kutusu.dart';
import 'SayfalarDöngüsü.dart';

class alt_appbar extends StatelessWidget {
  final List<IconData> icons = [
    Icons.home,
    Icons.message,
    Icons.favorite,
    Icons.person,

  ]; // İkonlarınızı burada tanımlayın

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Renkler.FF235265,
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(icons.length, (index) {
                  return IconButton(
                    icon: Icon(icons[index], color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sayfalar[index]),
                      );
                    },
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}