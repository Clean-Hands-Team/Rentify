class ProfilRepository {

  final List Profil_bilgileri = [

    ProfilBilgiler("Muhammed Said", "Eker", 150, "Bilgisayar Mühendisliği","Ahi Evren Üniversitesi"),

  ];

}
class ProfilBilgiler {
  String ad;
  String soyad;
  int fiyat;
  String bolum;
  String uninversite;


  ProfilBilgiler(this.ad, this.soyad, this.fiyat, this.bolum , this.uninversite);

}

