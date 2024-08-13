import 'package:flutter/material.dart';
import 'package:flutter_horoscope/data/strings.dart';
import 'package:flutter_horoscope/horoscope_item.dart';
import 'package:flutter_horoscope/model/horoscope.dart';

// ignore: must_be_immutable
class HoroscopeList extends StatelessWidget {
  late List<Horoscope> allHoroscope;

  HoroscopeList({super.key}) {
    allHoroscope = prepareData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(0, 0, 128, 0.9),
        title: const Text('Burç Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return HoroscopeItem(listedHoroscope: allHoroscope[index]);
          },
          itemCount: allHoroscope.length,
        ),
      ),
    );
  }

  List<Horoscope> prepareData() {
    List<Horoscope> temp = [];
    for (var i = 0; i < 12; i++) {
      var horoscopeName = Strings.BURC_ADLARI[i];
      var horoscopeDate = Strings.BURC_TARIHLERI[i];
      var horoscopeDetail = Strings.BURC_GENEL_OZELLIKLERI[i];
      var horoscopeSmallImg =
          'images/${Strings.BURC_ADLARI[i].toLowerCase()}${i + 1}.png';
      var horoscopeBigImg =
          'images/${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i + 1}.png';

      Horoscope horoscope = Horoscope(horoscopeName, horoscopeDate,
          horoscopeDetail, horoscopeSmallImg, horoscopeBigImg);
      temp.add(horoscope);
    }

    return temp;
  }
}
