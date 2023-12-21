import 'package:flutter/material.dart';
import 'package:rentify/constants//RenkPages.dart';
import 'package:rentify/repository/yakindakiler_repository.dart';
import 'package:rentify/repository/yakindakiler_repository_resim.dart';
import 'SaticiDetay.dart';
import 'package:rentify/repository/SaticiDetay_repository_resim.dart';

class Profil_ilanlarim extends StatefulWidget {
  final YakindakilerRepository yakindakilerRepository;
  final ResimRepository resimRepository;

  const Profil_ilanlarim(
      this.yakindakilerRepository, this.resimRepository,
      {Key? key})
      : super(key: key);

  @override
  State<Profil_ilanlarim> createState() => _Profil_ilanlarimState();
}

class _Profil_ilanlarimState extends State<Profil_ilanlarim> {
  final saticiDetayResimRepository = SaticiDetayResimRepository();


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.yakindakilerRepository.Yakindakiler_bilgileri.length,
        itemBuilder: (context, index) {
          Bilgiler bilgi =
          widget.yakindakilerRepository.Yakindakiler_bilgileri[index];

          List<String> imageNames = widget.resimRepository.imageNames;
          List<String> imagePaths = widget.resimRepository.imagePaths;

          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 5.0,
              margin: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SaticiDetay(
                            saticiDetayResimRepository: saticiDetayResimRepository,
                            bilgi: bilgi,
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding:  const EdgeInsets.only(top:10, right: 20, left: 20),
                            child: Card(
                              elevation: 10,
                              child: Container(
                                width: 350,
                                height: 150,
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
                        ),
                        const Positioned(
                          top: 10,
                          right: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '₺${bilgi.fiyat} / gün',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Renkler.FFF0816B,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                          '${bilgi.ad} Evi ',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Renkler.FF235265,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${bilgi.mahalle} mahallesi',
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
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
