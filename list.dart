void main(){
  List<String> sehirler = ["Ankara", "İstanbul", "İzmir"];
  List<int> sayilar = [10, 5, 9];
  List<dynamic> karisikListe = ["Ankara", 5, true]; //Farklı türde öğeleri (String, int, bool, double vb.) aynı listede tutabilir.
  sehirler[2] = "Antalya";
  sehirler.add("Tekirdağ");
  sehirler.remove("Ankara");
  print(sehirler);
  print(sayilar);
  print(karisikListe);
}