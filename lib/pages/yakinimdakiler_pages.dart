import 'package:flutter/material.dart';
import 'package:rentify/constants//RenkPages.dart';
import 'package:rentify/constants/palet.dart';
import 'package:rentify/repository/yakindakiler_repository.dart';
import 'package:rentify/repository/yakindakiler_repository_resim.dart';
import 'SaticiDetay.dart';
import 'package:rentify/repository/SaticiDetay_repository_resim.dart';


class yakinimdakiler_sayfasi extends StatefulWidget {
  final YakindakilerRepository yakindakilerRepository;

  final ResimRepository resimRepository;

  const yakinimdakiler_sayfasi(
      this.yakindakilerRepository, this.resimRepository,
      {Key? key})
      : super(key: key);

  @override
  State<yakinimdakiler_sayfasi> createState() => _yakinimdakiler_sayfasiState();
}

class _yakinimdakiler_sayfasiState extends State<yakinimdakiler_sayfasi> {
  YakindakilerRepository yakindakilerRepository = YakindakilerRepository();
  ResimRepository resimRepository = ResimRepository();
  final saticiDetayResimRepository = SaticiDetayResimRepository();

  Palet palet = Palet();


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0, // İstediğiniz yüksekliği ayarlayabilirsiniz
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.yakindakilerRepository.Yakindakiler_bilgileri.length,
        // Göstermek istediğiniz öğe sayısı
        itemBuilder: (context, index) {
          Bilgiler bilgi =
              widget.yakindakilerRepository.Yakindakiler_bilgileri[index];

          // Resim dosyalarının isimlerine erişim
          List<String> imageNames = widget.resimRepository.imageNames;

          // Resim dosyalarının tam yollarına erişim
          List<String> imagePaths = widget.resimRepository.imagePaths;

          return SizedBox(
            width: 300.0, // İstediğiniz genişliği ayarlayabilirsiniz
            child: Card(
              elevation: 10.0,
              margin: const EdgeInsets.all(5.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Buraya kare şeklinde bir resim ekleyebilirsiniz
                  Padding(
                    padding: Palet.pagePadding,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SaticiDetay(
                                saticiDetayResimRepository: saticiDetayResimRepository ,
                              bilgi: bilgi,
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Card(
                              elevation: 10,
                              child: Container(
                                width: 300,
                                height: 230,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                    image: AssetImage(imagePaths[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 10,
                            right: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Buraya metin ekleyebilirsiniz
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: Palet.pagePadding,
                        child: Text(
                          '₺${bilgi.fiyat} / gün',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Renkler.FFF0816B,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                fontSize: 20,
                                color: Renkler.FF235265,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Diğer metinleri de ekleyebilirsiniz
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${bilgi.ad} Evi ',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Renkler.FF235265,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          '${bilgi.mahalle} mahallesi',
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
