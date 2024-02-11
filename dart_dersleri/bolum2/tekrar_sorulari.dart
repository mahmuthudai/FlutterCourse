/**
 * SORU 1 : 3 tane double değişken olusturup bunların ortalamasını yazdıran programı yazınız
 * SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
 * SORU 3 : Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız
 * (geçme notu alt değeri = 50, vizenin %40 finalin %60ı alınır.)
 * 
 * SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
 * SORU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız. 
 * SORU 6: Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.
 */

void main(List<String> args) {
  //CEVAP 1
  double d1 = 12, d2 = 14, d3 = 15;
  print((d1 + d2 + d3) / 3);

  //CEVAP 2
  int k1 = 11, k2 = 12, k3 = 10;
  if (k1 == k2 && k1 == k3) {
    print("Eşkenar Üçgen");
  } else if (k1 != k2 && k2 != k3 && k1 != k3) {
    print("Çeşitkenar Üçgen");
  } else {
    print("İkizkenar Üçgen");
  }

  //CEVAP 3
  var vizeNotu = 40, finalNotu = 50;
  var not = (vizeNotu / 100 * 40) + (finalNotu / 100 * 60);
  if (not >= 50) {
    print("$not Tebrikler Geçtiniz");
  } else {
    print("$not Malesef Geçemediniz");
  }

  //CEVAP 4
  String ad = "Mahmut Hüdai Terzi";
  for (var i = 0; i < 5; i++) {
    print(ad);
  }

  int sayac = 0;
  while (sayac < 5) {
    print(ad);
    sayac++;
  }

  int sayac2 = 0;
  do {
    print(ad);
    sayac2++;
  } while (sayac2 < 5);

  //CEVAP 5
  for (var i = 1; i <= 100; i++) {
    if (i % 15 == 0) {
      print("$i nin karesi ${i * i}");
    }
  }

  //CEVAP 6
  int sayi = 5;
  int faktoriyel = 1;
  for (var i = 1; i <= sayi; i++) {
    faktoriyel *= i;
  }
  print(faktoriyel);
}
