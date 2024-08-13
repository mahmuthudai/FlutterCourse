import 'package:flutter/material.dart';
import 'package:flutter_horoscope/model/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final Horoscope selectedHoroscope;
  const HoroscopeDetail({super.key, required this.selectedHoroscope});

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appBarColor = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    findAppBarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            foregroundColor: Colors.white,
            expandedHeight: 200,
            primary: true,
            pinned: true,
            centerTitle: true,
            backgroundColor: appBarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '${widget.selectedHoroscope.horoscopeName} Burcu ve Özellikleri',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              background: Image.asset(
                widget.selectedHoroscope.horoscopeBigImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.selectedHoroscope.horoscopeDetail,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void findAppBarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage(widget.selectedHoroscope.horoscopeBigImg));
    appBarColor = _generator.dominantColor!.color;
    setState(() {});
  }
}
