/**
 * KURUCU METHODLAR - CONSTRUCTORS
 * Bir sınıftan nesne ürettiğimizde tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi veri göndererek oluşturabilir, nesneleri kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.
 
 * Farklı türde kurucu olusturabiliriz.
 *  1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
 *    Ogrenci emre=new Ogrenci() dediğimizde aslında default kurucu çalışır.
 *    Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
 *    Istersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan methoddur.
 *    Kurucu methodların geri dönüş tipi olmaz.

 *  2- Parametreli Kurucu Method : Aslında default constructorın parametre almış haline denir.
 *    Ogrenci emre=new Ogrenci("emre");
 * 
 *  Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.
 
 *  3- Named (Isimlendirilmiş) : Sınıf içerisinde 
     SinifAdi.methodAdi(){
     buraya kodlar gelir.
     }
    //Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz. 
 */

void main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  // honda.marka = "Honda";
  // honda.modelYili = 2020;
  // honda.otomatikMi = true;
  honda.bilgileriSoyle();
  honda.modelYili = 2021;
  honda.bilgileriSoyle();

  var reno = Araba(2019, "Reno", false);
  reno.bilgileriSoyle();

  var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

  var citroen = Araba.markasizKurucuMetot(2015, false);
  citroen.bilgileriSoyle();

  Araba opel = Araba.modelYilsizMetot("Opel", true);
  opel.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  /* Araba() {
    print("Kurucu metot tetiklendi");
  } */

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("Kurucu metot tetiklendi");
  }

  Araba.markasizKurucuMetot(this.modelYili, this.otomatikMi);

  Araba.modelYilsizMetot(this.marka, this.otomatikMi);

  /* Araba(int yil, String marka, bool otomatikMi) {
    print("Kurucu metot tetiklendi");
    modelYili = yil;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  } */

  void bilgileriSoyle() {
    print(
        "Arabanın model yılı ${modelYili}, markası : ${marka}, otomatik mi : ${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null)
      print("Arabanın yaşı ${2023 - modelYili!}");
    else
      print("Model yılı olmadığından hesaplanamadı");
  }
}
