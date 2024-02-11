void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar");
  print("Çocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();

  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti"));

  print("Peynir zeytin hazırlanır");
  print("Kahvavltı hazır");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 10), () {
    //return "Çocuk ekmekle eve girer";
    throw Exception("Bakkalda ekmek kalmamış");
  });
  return sonuc;
}
