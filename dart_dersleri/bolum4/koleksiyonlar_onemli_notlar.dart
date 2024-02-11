void main(List<String> args) {
  //var listem = <String>[];
  //var mySet = <String>{"hüdai", "ömer"};
  //var myMap = <String, dynamic>{"yas": 22};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  //spreads operator
  var sonListe = [...tekSayilar, ...ciftSayilar];
  /* sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar); */

  var map1 = {'ad': 'hüdai'};
  var map2 = {'yas': 22};
  var sonMap = {...map1, ...map2};

  var set1 = {'hüdai'};
  var set2 = {'ömer'};
  var set3 = {'barış'};
  var set4 = {'emin'};

  var sonSet = {...set1, ...set2, ...set3, ...set4};

  print(sonListe);
  print(sonMap);
  print(sonSet);
}
