/* VERI TİPLERİ VE DEĞİŞKEN KAVRAMI
DEGİSKEN :  Bir işlemi gerçekleştirmek için yapılması gereken ilk şey o veriyi hafızaya almaktır. İşlem yapmak istediğimizde de 
veriyi hafızadan çağırıp gerekli işlemleri yerine getirmektir. Hafızadaki verirleri ifade etmek için programlama dillerinde 
değişkenleri kullanırız. Özetle vermek gerekirse; programlama dilinde işlediğimiz verileri bilgisayarın
hafızasında tutmak için yapmış olduğumuz tanımlamalardır.

Tutulan verinin türüne göre farklı veri tipleri vardır. Dart built - in olarak şu tipleri içerir.
- Number
  - int tamsayılar
  - double ondalıklı sayılar
- String metinsel ifadeler
- Boolean true/false


Tüm veri tipleri Object yani nesneleridir. 

var anahtar kelimesi variable anlamına gelir ve veri türünü belirtmek istemiyorsak kullanırız. Atanan ifadeye göre otomatik olarak türü belirtir.
*/

void main(List<String> args) {
  int yas = 34;
  double ortalama = 5.6;
  num yil = 1988;

  print(yas);
  print(ortalama);
  print(yil);

  String ad = "hüdai";
  print(ad);

  print(ad);
  print(ad + "nin sevdiği renkler");
  print(ad + 'nin yaşı');

  bool erkekMi = true;
  bool issizMi = true;

  print(erkekMi);
  print(issizMi);

  var okul = "AGÜ";
  var okulNumarasi = 2011051023;
  var kedisiVarMi = true;

  print(okul);
  print(okulNumarasi);
  print(kedisiVarMi);
}
