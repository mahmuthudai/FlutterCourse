/*Soru 2
Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri
tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak
bu ogrencileri saklayın ve bu ogrencileri  yazdıran metotu yazın.
*/
import 'dart:math';

import 'öğrenci.dart';

void main(List<String> args) {
  //Ogrenci ogr1 = Ogrenci(id: 5, notDegeri: 10);
  List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());

  ogrenciListesiniDoldur(tumOgrenciler);
  for (var ogrenci in tumOgrenciler) {
    print(ogrenci);
  }

  print("Tüm öğrencilerin ortalaması " +
      ogrencilerinOrtalamasiniHesapla(tumOgrenciler).toString());
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (var i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}

double ogrencilerinOrtalamasiniHesapla(List<Ogrenci> liste) {
  int toplam = 0;
  for (var ogrenci in liste) {
    toplam += ogrenci.notDegeri;
  }

  return toplam / liste.length;
}
