void main(List<String> args) {
  print("Program basladı");

  try {
    int sayi = 100 ~/ int.parse("hüdai");
    print(sayi);
  // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print("Hata çıktı ${e}");
  } finally {
    print("İşlem bitti");
  }

  print("Program bitti");
}
