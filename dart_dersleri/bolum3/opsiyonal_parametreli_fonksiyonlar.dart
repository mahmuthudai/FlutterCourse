/**
 * methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese de olur gibi durumlarda süslü ve köşeli parantez kullanırız.
 * Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.
 * Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.
 * Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer kullanıcı  method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
 */

void main(List<String> args) {
  //int toplam = sayilariTopla(4, 5, 6);

  /* int toplam = sayilariTopla(4, 5);
  int toplam2 = sayilariTopla(2, 7, 9);
  print("Toplam $toplam");
  print("Toplam2 $toplam2"); */

  int toplam = sayilariTopla(9, s1: 5, s2: 4, s3: 8);
  print("Toplam $toplam");

  int hacim = hacimHesapla(en: 10, boy: 10, yukseklik: 10);
  print("Hacim $hacim");
}

//required parameter
/*int sayilariTopla(int s1, int s2, int s3) {
  return s1 + s2 + s3;
}*/

//optional
/* int sayilariTopla(int s1, [int s2 = 0, int s3 = 0]) {
  return s1 + s2 + s3;
} */

//optional named
int sayilariTopla(int s4, {int s1 = 0, int s2 = 0, int s3 = 0}) {
  return s4 + s1 + s2 + s3;
}

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
