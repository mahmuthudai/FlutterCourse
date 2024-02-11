void main(List<String> args) {
  // Ogrenci hudai = Ogrenci(1, "hüdai");
  // Ogrenci omer = Ogrenci.idSiz("ömer");
  Ogrenci batu = Ogrenci.factoryKurucusu(-9, "batu");

  print(batu.id);
  print(batu.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu çalıştı");
  }

  Ogrenci.idSiz(this.isim) {
    print("Varsayılan kurucu çalıştı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else {
      return Ogrenci(id, isim);
    }
  }
}
