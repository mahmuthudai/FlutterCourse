/* Sanslı 10 numarayı bulan bir uygulama yazınız.
Nasıl Yapılır ?
  1den 60a kadar sayıları 1.000.000 kere olusturunuz.
  Bu sayıları bir map yapısında anahtar , değer ilişkisinde saklayınız. Mesela 60 : 4
  (60 sayısı 4 kere çıkmış demektir)
  Bu işlem bittikten sonra bu sayıları tekrar etme sayısına göre bir listeye aktarınız.
  (60 eğer 4 kere çıktıysa listeye 60 sayısı 4 kere eklenmelidir. )
  

*/

import 'dart:math';

void main() {
  var numberMap = <int, int>{};

  for (int i = 0; i < 1000000; i++) {
    int randomNumber = Random().nextInt(60) + 1;
    if (numberMap.containsKey(randomNumber)) {
      numberMap[randomNumber] = numberMap[randomNumber]! + 1;
    } else {
      numberMap[randomNumber] = 1;
    }
  }

  numberMap.forEach((key, value) {
    print("$key: $value defa tekrar etti.");
  });
}
