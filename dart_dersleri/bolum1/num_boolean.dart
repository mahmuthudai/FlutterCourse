/*num : tamsayı veya ondalıklı bir ifadeyi saklayabilir
int = tamsayıları saklarken kullanılan veri türüdür 
hexadecimal değerleri de saklayabilir. 0xAABBCC

double = ondalıklı ifadeler için kullanılan veri türüdür. 
exponents değerli saklayabilir, 1.42e5

var anahtar kelime ile de tamsayı veya ondalıklı ifade saklanabilir.var olarak int deger atandıysa sonrasında double değer atanamaz

değişkenlerimize ilk değerleri atamak zorundayız, null değer kabul edilmez.
null değerlerin kabul edilmesini istiyorsak int?, double? bool? gibi farklı değişken tanımları yapmamız gerekir.

boolean = true/false değerleri alır
*/

void main(List<String> args) {
  int yas = 34;
  print(yas);
  yas = 44;
  print(yas);

  num yil = 1988; // bir tık gereksiz
  print(yil);

  double sayi = 52;
  print(sayi);

  int kilo = 84.6.toInt();
  print(kilo);

  var sayi2 = 56; // şuan int olarak atandı bunu sayi2'ye double atayamazsın
  print(sayi2);

  int numara; // boş bırakamıyorsun nullSafety olayı var
  numara = 9;
  print(numara + 9);

  double? s1 = null; // bu şekilde null atayabilirsin var hariç hepsinde geçerli
  print(s1);

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);
}
