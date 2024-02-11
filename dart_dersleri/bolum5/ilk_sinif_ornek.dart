//Nesneye yönelimli programlamaya giriş
/**
 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
 * Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 * 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 * 
 */

void main(List<String> args) {
  Ogrenci hudai = Ogrenci();
  hudai.ogrNo = 2011051023;
  hudai.ogrAd = "hüdai terzi";
  hudai.aktifMi = true;
  //var omer = Ogrenci();
}

class Ogrenci {
  //instance variables
  int ogrNo = 1;
  String? ogrAd = "";
  bool? aktifMi = true;

  void dersCalis() {
    print("Öğrenci ders çalışıyor");
  }
}
