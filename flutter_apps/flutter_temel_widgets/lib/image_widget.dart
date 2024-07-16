import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  final String _imgUrl =
      'https://www.chromethemer.com/wallpapers/chromebook-wallpapers/images/960/goku-dragon-ball-super-chromebook-wallpaper.jpg';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Image.asset(
                      "assets/images/goku.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Image.network(_imgUrl),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade300,
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: CircleAvatar(
                          /*child: Text(
                            "E",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          ),*/
                          backgroundImage: NetworkImage(
                              'https://www.pngall.com/wp-content/uploads/13/Anime-Logo-PNG-Cutout.png'),
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.red,
                        ),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: 'assets/images/Skateboarding.gif',
                image: _imgUrl),
          ),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.all(8),
            child: Placeholder(
              color: Colors.blue,
            ),
          )),
        ],
      ),
    );
  }
}
