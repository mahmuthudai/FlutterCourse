/*
ternary if yazımı ile kısa bir şekilde şart belirten ifadeler yazılabilir. Kullanımı :
koşul ? expression1 : expression2
eğer koşul doğru ise expression1 değeri, yanlış ise expression2 değeri kullanılır.

kısa kullanım ile değişkenlerin null değerde olup olmadıkları da kontrol edilebilir
expression1 ?? expression2
burda expression1 eğer null değilse kullanılır, eğer null ise expression2 kullanılır.

 */

void main(List<String> args) {
  int sayi1 = 4;
  var sayi2 = 6;
  int kucukSayi;

  /*  if (sayi1 < sayi2) {
    kucukSayi = sayi1;
  } else {
    kucukSayi = sayi2;
  }
 */
  //if kısımları "?" ile, else kısımları ":" ile gösterilir
  //sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  print("Küçük sayı : $kucukSayi");

  String? ad = null;
  String? soyad = "terzi";
  String? mesaj;

  mesaj = ad ?? soyad; //ad null değilse mesaj ad olsun null ise soyad olsun

  print("Merhaba $mesaj");
}
