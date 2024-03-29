/**
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
 * 
 * Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirden farklı elemanları içerir.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */

void main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};

  print(alanKodlari);
  print(alanKodlari["bursa"]);

  Map<String, dynamic> hudai = {
    "soyad": "terzi",
    "yas": 22,
    "bekarMi": true,
  };

  print(hudai["yas"]);

  //List sayilar = [0, 1, 2];

  //Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2["yas"] = 55;
  print(hudai["yas"]);

  for (var element in hudai.keys) {
    print(element);
    print(hudai[element]);
  }

  for (var element in hudai.values) {
    print(element);
  }

  for (var element in hudai.entries) {
    print("Key : ${element.key} değeri : ${element.value}");
  }

  if (hudai.containsKey("yas")) {
    print("Bulunan yaş değeri : ${hudai['yas']}");
  }
}
