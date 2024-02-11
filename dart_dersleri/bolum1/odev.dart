/*Sorular
1- Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde saklayıp, ekrana
"Benim adım emre altunbilek, yaşım 34 ve tüm ismimdeki karakter sayısı : 15'tir" yazdırın

2- Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın
örnek birinci kenarı 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12dir
*/

void main(List<String> args) {
  String isim = "Mahmut Hüdai";
  var soyIsim = "Terzi";
  int yas = 22;

  print(
      "Benim adım $isim $soyIsim, yaşım $yas ve tüm ismimdeki karakter sayısı : ${(isim + " " + soyIsim).length}'dir");

  int birinciKenar = 3;
  int ikinciKenar = 4;
  int ucuncuKenar = 5;

  print(
      "Birinci kenarı $birinciKenar, ikinci kenarı $ikinciKenar, üçüncü kenarı $ucuncuKenar olan üçgenin çevresi ${birinciKenar + ikinciKenar + ucuncuKenar}'dir");
}
