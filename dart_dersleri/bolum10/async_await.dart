void main(List<String> args) async {
  print("İnternetten kişi verisi getirilecek");
  kisiyleIlgiliIslemler();
  print("Başka işlerr yapılacak");
  print("İşlem bitti");
}

void kisiyleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "Kişi adı : Hüdai ve id 100";
  });
}
