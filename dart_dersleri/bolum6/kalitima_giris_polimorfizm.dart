/**
 * KALITIM INHERITANCE : İki adet sınıf düşünelim. Birinin adı Ebeveyn diğerinin adı Çocuk olsun. 
 * Ebeveyn sınıfının özelliklerini anne+baba’nın işlevleri oluşturmaktadır. 
 * Çocuk ise bazı özellikler bakımından anne babaya benzerlik göstermektedir. (saç rengi, göz rengi) 
 * Bunların yanından çocukta anne ve babasında olmayan bazı özelliklerde yer alabilir.  ( Anne baba kısa boylu iken çocuğun uzun olması). 
 * Ebeveyn gibi üst sınıflara süper sınıflar denir.  Bunlardan türetilen alt sınıflara alt sınıflar denir. 

Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması ya da bazı özellikleri diğer sınıflara izin vermesidir.

Extends anahtar kelimesi: bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.

Her alt sınıf doğrudan bir tane süper sınıfa sahip olabilir. 
Her alt sınıf süper sınıfın özelliklerini taşır.  
Süper sınıftan alınan bazı özellikler değiştirilebilir. Aynen kullanılmak zorunda değildir. 
Kalıtımın basamakları çok uzun olmamalıdır.  Bu kötü tasarıma neden olur.

Kalıtımın Faydaları
Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.  
if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.

Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 */

/**
 * Polimorfizm, nesneye yönelik programlamanın önemli kavramlarından biridir ve sözlük anlamı olarak "bir çok şekil" anlamına gelmektedir. 
 * Polimorfizm ile kalıtım konusu iç içedir. 
 * Kalıtım konusunu geçen bölüm incelenmişti; kalıtım konusunda iki taraf bulunmaktadır, 
 * ana sınıf ve bu sınıftan türeyen alt sınıf/sınıflar. 
 * 
 * Alt sınıf, türetildiği ana sınıfa ait tüm özellikleri alır; 
 * yani, ana sınıf ne yapıyorsa türetilen alt sınıfta bu işlemlerin aynısını yapabilir 
 * ama türetilen alt sınıfların kendilerine ait bir çok yeni özelliği de olabilir. 
 * Ayrıca türetilen alt sınıfa ait nesnenin, ana sınıf tipindeki referansa bağlamanın yukarı doğru (upcasting) işlemi denir.
 * 
 * Aşağıdaki örnekte üç  kavram mevcuttur, 
 *    bunlardan biri yukarı çevirim (upcasting) 
 *    diğeri polimorfizm 
 *    ve son olarak da geç bağlama (late binding). 
 * 
 * Şimdi yukarı çevirim ve polimorfizm kavramlarını açıklayalım. 
 * Bu örneğimizde ana sınıf Asker sınıfıdır; bu sınıfdan türeyen sınıflar ise Er ve Yuzbasi sınıflarıdır. Bu ilişki "bir" ilişkisidir ;
·       Er bir Askerdir, veya 
·       Yüzbası bir Askerdir, diyebiliriz. 

Yani Askersınıfının yaptığı her işi Er sınıfı veya Yuzbasi sınıfı da yapabilir 
artı türetilen bu iki sınıf kendisine has özellikler taşıyabilir,
 Asker sınıfı ile Er ve Yuzbasi sınıflarının arasında kalıtımsal bir ilişki bulunmasından dolayı, 
 Asker tipinde parametre kabul eden hazirOl() metotuna Er ve Yuzbasi tipindeki referansları paslayabildik, 
 bu özelliğinde yukarı çevirim (upcasting) olduğunu söyleyebilir. 

Polimorfizm ise hazirOl() yordamının içerisinde gizlidir. 
Bu yordamın (method) içerisinde Asker tipinde olan a referansı kendisine gelen 2 değişik nesneye (Er ve Yuzbasi) bağlanabildi; 
bunlardan biri Er diğeri ise Yuzbasi’dır. Peki bu yordamın içerisinde neler olmaktadır? 

Sırası ile açıklarsak; ilk önce Asker nesnesine bağlı Asker tipindeki referansı, 
hazirOl()yordamına parametre olarak gönderiyoruz, burada herhangi bir terslik yoktur çünkü 
hazirOl()yordamı zaten Asker tipinde parametre kabul etmektedir.
Burada dikkat edilmesi gereken husus, hazirOl() yordamının içerisinde Asker tipindeki yerel a değişkenimizin, 
kendi tipinden başka nesnelere de (Er ve Yuzbasi) bağlanabilmesidir; 
yani, Asker tipindeki yerel a değişkeni bir çok şekle girmiş bulunmaktadır. Aşağıdaki ifadelerin hepsi doğrudur:
·       Asker a = new Asker() ;
·       Asker a = new Er();
·       Asker a = new Yuzbasi();
Yukarıdaki ifadelere, Asker tipindeki adeğişkenin açısından bakarsak, 
bu değişkenin bir çok nesneye bağlanabildiğini görürüz, 
bu özellik polimorfizm 'dir -ki bu özelliğin temelinde kalıtım (inheritance) yatar.
 */

void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  AdminUser user4 = AdminUser();

  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser(); //upcasting, yukarı cevrim

  List<User> tumUserlar = [user1, user2, user3, user4, user5];
  tumUserlar.add(user6);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
}

void test(User kullanici) {
  kullanici.girisYap(); //polimorfizm, çok biçimlilik
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("Parent user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }

  @override
  void girisYap() {
    print("Normal user giriş yaptı");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("Ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("Sadece okuyabilen normal user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiGoster() {
    print("Toplam user sayısı 20");
  }

  @override
  void girisYap() {
    print("Admin user giriş yaptı");
  }
}
