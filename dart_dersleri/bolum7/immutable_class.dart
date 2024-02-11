main(List<String> args) {
  const Student hudai = Student(5, "hüdai");
  //final Student hudai2 = const Student(5, "hüdai");
  var hudai3 = const Student(5, "hüdai");
  hudai3 = const Student(5, "hüdai");

  if (hudai == hudai3) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
