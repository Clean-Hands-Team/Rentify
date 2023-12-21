import 'package:flutter/material.dart';
import 'package:rentify/pages/alt_appbar.dart';
import 'package:rentify/constants//RenkPages.dart';
import 'Favorilerim_bilgiler.dart';

import 'package:rentify/repository/yakindakiler_repository.dart';
import 'package:rentify/repository/yakindakiler_repository_resim.dart';

class Favori extends StatefulWidget {
  @override
  State<Favori> createState() => _FavoriState();
}

class _FavoriState extends State<Favori> {
  final ScrollController _scrollController = ScrollController();
  YakindakilerRepository yakindakilerRepository = YakindakilerRepository();

  ResimRepository resimRepository = ResimRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Text(
                        'Favorilerim :',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                   child: Favori_ilanlarim(yakindakilerRepository,resimRepository),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
