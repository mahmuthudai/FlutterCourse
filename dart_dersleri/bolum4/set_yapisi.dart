/**
 * Bir diğer koleksiyon yapısı da Set yapısıdır.
 * List den en önemli farklı elemanları sıralı olarak tutmaz, bu durumda list lerde oldugu gibi indexleri kullanamayız
 * Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
 * 
 * index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
 * 
 */

void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("hüdai");
  isimler.add("hüdai");
  isimler.add("emin");
  isimler.add("barış");
  isimler.add("ömer");
  isimler.add("berat");

  bool sonuc = isimler.remove("hüdai222");
  print("sonuc : " + sonuc.toString());

  for (var element in isimler) {
    print("isim : $element");
  }

  Set<int> numaralar = Set.from([1, 2, 3, 4, 2, 1, 5, 2, 1, 3, 1, 1, 4, 5, 0]);
  List<int> ciftsayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  for (var element in numaralar) {
    print(element);
  }

  numaralar.clear();
  numaralar.addAll(ciftsayilar);

  for (var element in numaralar) {
    print(element);
  }
}
