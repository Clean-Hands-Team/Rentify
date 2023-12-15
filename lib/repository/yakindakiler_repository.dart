class YakindakilerRepository {

  final List Yakindakiler_bilgileri = [

    Bilgiler("Muhammed Said", "Eker", 150, "Yıldırım","Ahi Evren Üniversitesi"),
    Bilgiler("Semiha", "Çelik", 220, "Vatan","Ahi Evren Üniversitesi"),
    Bilgiler("Faruk", "Yılmaz", 420, "Talatpaşa bulv.","Ahi Evren Üniversitesi"),
    Bilgiler("Mahmut", "sadsa", 120, "mahmutun mahlesi","Ahi Evren Üniversitesi"),
    Bilgiler("Fatma", "dsadsad", 200, "Fatmanın mahlesi","Ahi Evren Üniversitesi"),
  ];

}
class Bilgiler {
  String ad;
  String soyad;
  int fiyat;
  String mahalle;
  String uninversite;


  Bilgiler(this.ad, this.soyad, this.fiyat, this.mahalle , this.uninversite);

}

