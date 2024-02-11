void main(List<String> args) {
  Veritabani db = FirebaseDB();
  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();

  void urunGuncelle();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("oracle dbden user silindi");
  }

  @override
  void userSave() {
    print("oracle dbye user eklendi");
  }

  @override
  void userUpdate() {
    print("oracle dbde user güncellendi");
  }

  @override
  void urunGuncelle() {}
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("firebase dbden user silindi");
  }

  @override
  void userSave() {
    print("firebase dbye user eklendi");
  }

  @override
  void userUpdate() {
    print("firebase dbde user güncellendi");
  }

  @override
  void urunGuncelle() {}
}
