void main(List<String> args) {
  List<int> sayilar = [10, 8, 4, 11, 2];

  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }
  print("Boş mu : " + sayilar.isEmpty.toString());
  print("Eleman sayısı : ${sayilar.length}");
  print("Ters sırada ${sayilar.reversed}");
  print(sayilar);

  sayilar.add(23);
  print(sayilar);

  sayilar.remove(3);
  print(sayilar);

  sayilar.removeAt(1);
  print(sayilar);

  //sayilar.clear();
  if (sayilar.contains(9)) {
    print("Listede 9 var");
  } else {
    print("Listede 9 yok");
  }
  print(sayilar);

  print(sayilar.elementAt(2));
  print(sayilar.indexOf(11));

  sayilar.shuffle();
  print(sayilar);
}
