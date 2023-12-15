import 'package:flutter/material.dart';
import 'package:rentify/RenkTanimlama/RenkPages.dart';
import 'package:rentify/repository/Profil_repository.dart';


class ProfilimDetayKart extends StatefulWidget {



  @override
  State<ProfilimDetayKart> createState() => _ProfilimDetayKartState();
}

class _ProfilimDetayKartState extends State<ProfilimDetayKart> {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.5 - 205,
      left: MediaQuery.of(context).size.width * 0.5 - 170,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:Card(
              elevation: 5.0,
              child: Stack(
                children: [
                  Container(
                    width: 340,
                    height: 170,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                            child: Text(
                              'Muhammed Said Eker ',
                              style: TextStyle(
                                fontSize: 20,
                                color: Renkler.FF235265,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25, top: 10, bottom: 5),
                            child: Text(
                             'Kırşehir Ahi Evran Üniversitesi \nBilgisayar Mühendisliği',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Renkler.FF235265,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          )
        ],
      ),
    );
  }
}
