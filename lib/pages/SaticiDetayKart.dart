import 'package:flutter/material.dart';
import 'package:rentify/constants//RenkPages.dart';
import 'package:rentify/repository/yakindakiler_repository.dart';

class SaticiDetayKart extends StatefulWidget {
  final Bilgiler bilgi;
  final YakindakilerRepository yakindakilerRepository;

  const SaticiDetayKart({Key? key, required this.bilgi , required this.yakindakilerRepository}) : super(key: key);

  @override
  _SaticiDetayKartState createState() => _SaticiDetayKartState();
}

class _SaticiDetayKartState extends State<SaticiDetayKart> {
  YakindakilerRepository yakindakilerRepository = YakindakilerRepository();


  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.5 - 170,
      left: MediaQuery.of(context).size.width * 0.5 - 178,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              elevation: 10.0,
              child: Stack(
                children: [
                  Container(
                    width: 350,
                    height: 170,
                    decoration: const BoxDecoration(
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                            child: Text(
                              '${widget.bilgi.ad} Evi',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Renkler.FF235265,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                            child: Text(
                              widget.bilgi.mahalle,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
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
                  const Positioned(
                    top: 100,
                    right: 40,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
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
