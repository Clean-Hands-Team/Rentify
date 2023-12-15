import 'package:flutter/material.dart';
import 'yakinimdakiler_pages.dart';
import 'alt_appbar.dart';
import 'package:rentify/repository/yakindakiler_repository_resim.dart';
import 'package:rentify/repository/yakindakiler_repository.dart';
import 'package:rentify/RenkTanimlama/RenkPages.dart';


class ilkSayfa extends StatefulWidget {
  const ilkSayfa({super.key});

  @override
  State<ilkSayfa> createState() => _ilkSayfaState();
}

class _ilkSayfaState extends State<ilkSayfa> {

  YakindakilerRepository yakindakilerRepository = YakindakilerRepository();
  ResimRepository resimRepository = ResimRepository();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0 , bottom: 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(right: 20.0, left: 30),
                        // Sağ boşluğu 20.0 birim olarak ayarladık
                        child: const Text(
                          'RENTIFY',
                          style: TextStyle(
                            fontSize: 65,
                            color: Renkler.FF235265,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.notifications_none,
                            color: Renkler.FF235265,
                          ),
                          iconSize: 40,
                          onPressed: () {
                            // Bildirim simgesine tıklandığında yapılacak işlemler
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 0.0, right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Ev bul...',
                                    prefixIcon: const Icon(Icons.search),
                                    fillColor: Renkler.FFF5F8F9, // Arka plan rengini cyan yapar
                                    filled: true, // Arka plan rengini etkinleştirir
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                  ),
                                )

                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Renkler.FF235265, // Mavi arka plan rengi
                                  borderRadius: BorderRadius.circular(
                                      10), // Çerçevenin yuvarlak köşeleri
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.format_list_bulleted_outlined,
                                    // Filtreleme ikonu eklendi
                                    color: Colors.white,
                                  ),
                                  iconSize: 40,
                                  onPressed: () {
                                    // Filtreleme ikonuna tıklandığında yapılacak işlemler
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30 ,left:0 , right: 0 ,bottom: 20),
                  child: Row(
                    children: [
                      Text(
                        'Yakınımdakiler:',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                // Yatay kaydırmayı ve alt alta sıralamayı sağlayan ListView.builder ekleniyor
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: yakinimdakiler_sayfasi(yakindakilerRepository,resimRepository),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: alt_appbar(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
