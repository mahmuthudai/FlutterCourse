import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.*/
  print("CEVAP 1 : ");
  List<String> sehirler = List.filled(4, "");
  sehirler[0] = 'Erzurum';
  sehirler[1] = 'Kayseri';
  sehirler[2] = 'Ankara';
  sehirler[3] = 'İzmit';

  print(sehirler);

  for (var element in sehirler) {
    print(element);
  }

  //2- Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın.
  print("CEVAP 2 : ");
  Map<String, dynamic> bilgi = {
    'cekirdek_sayisi': 16,
    'ram_miktari': 16,
    'ssd_var_mi': true
  };

  print(bilgi);
  print("Bilgisayar Bilgileri : ");
  for (var oAnkiEntry in bilgi.entries) {
    print(" ${oAnkiEntry.key} : ${oAnkiEntry.value}");
  }

  /* 3- Her bir elemanında  keyleri string,  value'leri dynamic  olan bir liste olusturun.
  Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
  Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
  Örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele olabilir). */
  print("CEVAP 3 : ");
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];

  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1['il_adi'] = 'ankara';
  eklenecekSehir1['ilce_sayisi'] = 10;
  eklenecekSehir1['plaka_kodu'] = 6;
  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2['il_adi'] = 'bursa';
  eklenecekSehir2['ilce_sayisi'] = 6;
  eklenecekSehir2['plaka_kodu'] = 16;

  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3['il_adi'] = 'istanbul';
  eklenecekSehir3['ilce_sayisi'] = 16;
  eklenecekSehir3['plaka_kodu'] = 34;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({'il_adi': 'izmir', 'ilce_sayisi': 9, 'plaka_kodu': 35});

  for (int i = 0; i < iller.length; i++) {
    var oankiSehirMapYapisi = iller[i];
    print(
        "Listenin ${i + 1}. elemanında bulunan sehir adı: ${oankiSehirMapYapisi['il_adi']} ilce sayısı : ${oankiSehirMapYapisi['ilce_sayisi']} plaka kodu ${oankiSehirMapYapisi['plaka_kodu']} ");
  }

  /*4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun
  Bu elemanları tek bir listeye aktarın
  Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.*/
  print("CEVAP 4 : ");
  List<int> liste1 = List.filled(5, 0);
  var liste2 = List<int>.filled(5, 0);
  List<int> sonListe = <int>[];
  Set<int> sonSetYapisi = <int>{};

  for (var i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }

  sonListe = [...liste1, ...liste2];

  for (var gecici in sonListe) {
    sonSetYapisi.add(gecici * gecici);
  }

  print(sonListe);
  print(sonSetYapisi);

  /*  5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini
  girdiğinde girilen sayıların ortalamasını ekrana yazdırın. */
  print("CEVAP 5 : ");
  int girilenNot = 0;
  List<int> girilenNotlar = <int>[];

  do {
    print("Lütfen notunuzu giriniz, çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);

  print("Kaç tane not girildi ${girilenNotlar.length}");
  double ortalama = listeninOrtalamasiniBul(girilenNotlar);
  print("Notların ortalaması : $ortalama");
}

double listeninOrtalamasiniBul(List<int> liste) {
  int toplam = 0;
  for (var i = 0; i < liste.length; i++) {
    toplam += liste[i];
  }
  return toplam / liste.length;
}
