/**
 * Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.
 */

//lexical vaiable scope
void main(List<String> args) {
  /* var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(mainDegiskeni);
    }
  } */

  var donduruleFonksiyon = topla(3);
  var sonuc = donduruleFonksiyon(4);
  print(sonuc);
}

Function topla(int eleman) {
  return (int deger) => eleman * deger;
}
