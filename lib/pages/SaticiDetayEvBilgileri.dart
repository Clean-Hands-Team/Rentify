import 'package:flutter/material.dart';
import 'package:rentify/constants//RenkPages.dart';
import 'package:rentify/repository/yakindakiler_repository.dart';

class SaticiDetayEvBilgileri extends StatelessWidget {
  final Bilgiler bilgi;

  const SaticiDetayEvBilgileri({Key? key, required this.bilgi}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 120, right: 20, left: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 25),
             Text(
              ' ${bilgi.ad} ${bilgi.soyad} ',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
             Row(
              children: <Widget>[
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Renkler.FF235265,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${bilgi.ad} ${bilgi.soyad} ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Renkler.FF235265,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      '${bilgi.uninversite} ',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(width: 30), // Bu satırı ekledim
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.cyan,
                  child: Icon(
                    Icons.message,
                    color: Renkler.FFF5F8F9,
                    size: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
             const Text(
              'Evimin Özellikleri',
              style: TextStyle(fontSize: 20),
            ),
            const Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          // Yeni eklenen Row widget
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.cyan,
                              child: Icon(
                                Icons.local_hotel_rounded,
                                color: Renkler.FFF5F8F9,
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '2',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ), // Yatak ikonunun yanına "2" yazıldı
                          ],
                        ),
                      ),
                      Text('Yatak Odası'),
                      // "Yatak Odası" metni Row widget'ının altında
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          // Yeni eklenen Row widget
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.cyan,
                              child: Icon(
                                Icons.bathtub,
                                color: Renkler.FFF5F8F9,
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ), // Banyo ikonunun yanına "1" yazıldı
                          ],
                        ),
                      ),
                      Text('Banyo'), // "Banyo" metni Row widget'ının altında
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          // Yeni eklenen Row widget
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.cyan,
                              child: Icon(
                                Icons.select_all,
                                color: Renkler.FFF5F8F9,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '125',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ), // Metrekare ikonunun yanına "125" yazıldı
                          ],
                        ),
                      ),
                      Text('Metrekare'),
                      // "Metrekare" metni Row widget'ının altında
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            '₺${bilgi.fiyat} / gün',
                            style: const TextStyle(
                              fontSize: 25,
                              color: Renkler.FFF0816B,
                            ),
                          ),
                          const SizedBox(width: 45),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: GestureDetector(
                              onTap: () {

                                // Rezervasyon Talebi Tıklanma yeri
                              },
                              child:ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Renkler.FF235265, // Mavi arka plan rengi
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30), // Çerçevenin yuvarlak köşeleri
                                  ),
                                  minimumSize: const Size(160, 50), // Genişlik ve yükseklik
                                  padding: const EdgeInsets.all(15.0), // İç boşluk
                                ),
                                onPressed: () {
                                  // Buraya tıklama işlemi için kodunuzu ekleyin
                                },
                                child: const Text(
                                  'Rezervasyon Talebi',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
