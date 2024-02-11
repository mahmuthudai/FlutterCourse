/*
SORU1: Parametre olarak  bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..

SORU2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı
Eğer PI sayısı verilmediyse varsayılan olarak 3,14 alarak hesaplama yapın.

SORU3: Bir ücgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız.
Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu
ekrana yazdırsın, geriye bir değer döndürmesin.

 */

void main(List<String> args) {
  print(cevap1(20));
  print(cevap2(2, 3));
  cevap3(k1: 11, k2: 11, k3: 10);
}

//CEVAP 1
int cevap1(int sayi) {
  int sonuc = 0;
  for (var i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      sonuc += i;
    }
  }
  return sonuc;
}

//CEVAP 2
double cevap2(double r, [double pi = 3.14]) {
  return pi * r * r;
}

//CEVAP 3
void cevap3({int k1 = 1, int k2 = 1, int k3 = 1}) {
  if (k1 == k2 && k1 == k3) {
    print("Eşkenar Üçgen");
  } else if (k1 != k2 && k2 != k3 && k1 != k3) {
    print("Çeşitkenar Üçgen");
  } else {
    print("İkizkenar Üçgen");
  }
}
