/**
 * Higher order functions : bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
 * Tabi ikisi aynı anda da yapabilir.
 * 
 */

void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  /* liste.forEach((element) {
    print("Element : $element");
  }); */

  liste.forEach(callback);

  kendiForEachYapim(liste, (int deger, int index) {
    print("Değer $deger ve index $index");
  });
}

void kendiForEachYapim(List<int> liste, Function callback) {
  for (var i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
}

void callback(int element) {
  print("Element : $element");
}
