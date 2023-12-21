import 'package:flutter/material.dart';
import 'package:rentify/pages/alt_appbar.dart';
import 'package:rentify/constants//RenkPages.dart';

class Mesajlarim_Kutusu extends StatefulWidget {
  @override
  State<Mesajlarim_Kutusu> createState() => _Mesajlarim_KutusuState();
}

class _Mesajlarim_KutusuState extends State<Mesajlarim_Kutusu> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Renkler.FF97BCBB, // Arka plan rengi
                  backgroundBlendMode: BlendMode.colorBurn,
                boxShadow: [
                  BoxShadow(
                    color: Renkler.FF97BCBB.withOpacity(0.1), // Gölge rengi ve saydamlığı
                    spreadRadius: 10, // Gölge yayılımı
                    offset: Offset(0, 5),  // Gölgenin yatay ve dikey konumu
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Row(
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
                  Expanded(
                    child: Scrollbar(
                      thickness: 10,
                      controller: _scrollController,
                      child: ListView.builder(
                        controller: _scrollController,
                        scrollDirection: Axis.vertical,
                        itemCount: 10, // Burada kaç tane öğe olacağını belirleyin
                        itemBuilder: (context, index) {
                          return const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start, // 'Merhaba' yazısını sol tarafa yasladık
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 25, // Avatar çapını küçülttük
                                              backgroundColor: Renkler.FF235265,
                                            ),
                                            SizedBox(width: 20),
                                            Text(
                                              'Muhammed said ',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Renkler.FF235265,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10), // 'Merhaba' yazısını biraz aşağıya taşıdık
                                        Text(
                                          'Merhaba , müsait miydiniz......',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
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
    );
  }
}
