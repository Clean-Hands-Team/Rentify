import 'package:flutter/material.dart';
import 'package:rentify/repository/yakindakiler_repository_resim.dart';
import 'package:rentify/repository/yakindakiler_repository.dart';
import 'package:rentify/repository/SaticiDetay_repository_resim.dart';
import 'SaticiDetayKart.dart';
import 'package:rentify/constants//RenkPages.dart';
import 'SaticiDetayEvBilgileri.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SaticiDetay extends StatefulWidget {
  final SaticiDetayResimRepository saticiDetayResimRepository;
  final Bilgiler bilgi;

  const SaticiDetay(
      {Key? key, required this.saticiDetayResimRepository, required this.bilgi})
      : super(key: key);

  @override
  State<SaticiDetay> createState() => _SaticiDetayState();
}

class _SaticiDetayState extends State<SaticiDetay> {
  YakindakilerRepository yakindakilerRepository = YakindakilerRepository();
  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = widget.saticiDetayResimRepository.imagePaths;
    final _controller = PageController();

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
                    PageView.builder(
                      controller: _controller,
                      itemCount: imagePaths.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imagePaths[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: imagePaths.length,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: Colors.white,
                          dotColor: Colors.grey,
                          dotHeight: 10.0,
                          dotWidth: 10.0,
                          expansionFactor: 3,
                        ),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          body: SaticiDetayEvBilgileri(bilgi: widget.bilgi),
        ),
        SaticiDetayKart(bilgi: widget.bilgi, yakindakilerRepository: yakindakilerRepository),
      ],
    );
  }
}
