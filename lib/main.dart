void main() {
  /*final ogretman = Ogretmen('doğukan');
  final ogrenci1 = Ogrenci<Ogretmen>(ogretman);
  ogrenci1.merhabaDe();*/
  final l = [1, 2, if (2 == 2) 44, 3, if (3 == 3) 66 else 33, 4, 5];
  print([...l, 6, 7, 8]);
  final iterable = [1, 2, 3, 4];
  print(iterable.every((element) => element < 2));
  print(iterable.map((e) => '$e sayısı'));
}

class MyClass<T> {
  T val;

  MyClass(this.val);
}

class Ogretmen {
  String ad;

  void merhabaDe() {
    print("merhaba " + ad);
  }

  Ogretmen(this.ad);
}

class IngilizceOgretmeni extends Ogretmen {
  String chapter;

  IngilizceOgretmeni(this.chapter, String ad) : super(ad);

  @override
  void merhabaDe() {
    super.merhabaDe();
    print(chapter);
  }
}

class Ogrenci<T extends Ogretmen> {
  T gozeten;

  Ogrenci(this.gozeten);

  void merhabaDe() {
    gozeten.merhabaDe();
  }
}
