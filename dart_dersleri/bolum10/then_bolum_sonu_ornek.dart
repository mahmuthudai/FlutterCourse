/**
 * Soru
 * Bir fonksiyon yazın bu fonksiyon aldıgı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 saniye sonunda sonuclanacaktır ve getirilen kişi bilgisi map olarak alınacaktır. Bu map yapısında username ve id bilgisi olması yeterlidir.
 * 
 * getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazın. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektir.
 * 
 * 
 * Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonksiyon yazın,. Bu fonksiyon 1 saniye sürecektir. 
 */

void main(List<String> args) {
  idyeGoreUserGetir(5).then((value) {
    print(value);
    kurslariGetir(value['username']).then((List kurslarListesi) {
      print(kurslarListesi);
      String ilkKurs = kurslarListesi[0];
      kursunIlkYorumu(ilkKurs).then((String yorum) {
        print(yorum);
      });
    });
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id'li kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'hüdaiterzi', 'id': id};
  });
}

Future<List<String>> kurslariGetir(String username) {
  print("$username'adlı kullanıcının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["flutter", "kotlin", "java"];
  });
}

Future<String> kursunIlkYorumu(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs Mükemmel";
  });
}
