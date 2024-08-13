import 'package:flutter/material.dart';
import 'package:flutter_horoscope/horoscope_detail.dart';
import 'package:flutter_horoscope/model/horoscope.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope listedHoroscope;
  const HoroscopeItem({super.key, required this.listedHoroscope});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HoroscopeDetail(selectedHoroscope: listedHoroscope)));
            },
            leading: Image.asset(
              listedHoroscope.horoscopeSmallImg,
              width: 64,
              height: 64,
            ),
            title: Text(
              listedHoroscope.horoscopeName,
              style: myTextStyle.titleLarge,
            ),
            subtitle: Text(
              listedHoroscope.horoscopeDate,
              style: myTextStyle.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromRGBO(0, 0, 128, 1),
            ),
          ),
        ),
      ),
    );
  }
}
