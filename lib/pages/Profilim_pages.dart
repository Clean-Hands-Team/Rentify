import 'package:flutter/material.dart';
import 'package:rentify/pages/alt_appbar.dart';
import 'package:rentify/repository/yakindakiler_repository.dart';
import 'ProfilimDetayKart.dart';
import 'Profil_ilanlarim.dart';
import 'package:rentify/repository/yakindakiler_repository_resim.dart';


class Profilim extends StatefulWidget {


  @override
  State<Profilim> createState() => _ProfilimState();
}

class _ProfilimState extends State<Profilim> {
  YakindakilerRepository yakindakilerRepository = YakindakilerRepository();

  ResimRepository resimRepository = ResimRepository();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(250.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
              child: AppBar(
                flexibleSpace: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Profil_images/profil_resim.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          body: Column(
            children: [
              const Padding(
                padding:  EdgeInsets.only(top: 100, right: 10, left: 10, bottom: 0),
                child: Row(
                  children: [
                    Text(
                      'İlanlarım :',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(bottom: 5),
                child: Profil_ilanlarim(yakindakilerRepository,resimRepository),
              ),

            ],
          ),



        ),
       ProfilimDetayKart(),
      ],
    );
  }
}
