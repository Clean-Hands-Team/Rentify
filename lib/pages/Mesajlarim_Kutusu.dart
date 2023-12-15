import 'package:flutter/material.dart';
import 'package:rentify/pages/alt_appbar.dart';
import 'package:rentify/RenkTanimlama/RenkPages.dart';

class Mesajlarim_Kutusu extends StatefulWidget {
  @override
  State<Mesajlarim_Kutusu> createState() => _Mesajlarim_KutusuState();
}

class _Mesajlarim_KutusuState extends State<Mesajlarim_Kutusu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10, // Burada kaç tane öğe olacağını belirleyin
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    if (index == 0)
                      const Padding(
                        padding: EdgeInsets.only(top: 30, right: 10, left: 10, bottom: 0),
                        child: Row(
                          children: [
                            Text(
                              'Mesajlarım :',
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    SizedBox(height:10),
                      const Padding(
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 10),
                        child: Card(
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Renkler.FF235265,
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Muhammed said ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Renkler.FF235265,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  Text(
                                    'Merhaba ',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10 , bottom: 18),
            child: alt_appbar(),
          ),
        ],
      ),
    );
  }
}
