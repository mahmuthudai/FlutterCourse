/*
String : Metinsel ifadeler için kullanılan veri türüdür.
Çift tırnak veya tek tırnak ile belirilebilir.
İki stringi birleştirmek için + operatörü kullanılır.
Birden fazla satır süren metinsel ifadeleri birleştirirken + kullanmasak da olur. 
  'ifade 1'
  'ifade 2' olarak kullanilabilir.
 
Interpolation : string ifade içinde baska bir string ifadeyi $ifade olarak kullabiliriz. Böylece + kullanmak gerekmez.
Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
Ayrıca interpolation diğer veri türleri için de geçerlidir.
*/

void main(List<String> args) {
  String isim = "mahmut hüdai";
  String soyIsim = 'terzi';
  //var kurs = 'Dart\'ın Kullanımı';
  //String kursTanimi = "Dart'ı ve Flutter'ı öğreneceğiz";

  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("Soyadım olan $soyIsim'de bulunan karakter sayısı: " +
      soyIsim.length.toString());
  print("Karakter sayısı ${soyIsim.length}");
  print("Adım olan $isim kelimesinde bulunan karakter sayıı ${isim.length}");

  double en = 10;
  double boy = 12;

  print("Eni $en ve boyu $boy olan dikdörtgenin alanı $en * $boy'dir");
  print("Eni $en ve boyu $boy olan dikdörtgenin alanı ${en * boy}'dir");
  print(15.9.toInt());
  print(
      "Eni ${en.toInt()} ve boyu ${boy.toInt()} olan dikdörtgenin alanı ${en.toInt() * boy.toInt()}'dir");
  print(
      "Eni ${en.toInt()} ve boyu ${boy.toInt()} olan dikdörtgenin alanı ${(en * boy).toInt()}'dir");
}
