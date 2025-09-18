void main(){
  // List<String> calisanlar = ["Ali", "Ayşe", "Fatma", "Ahmet"];
  // List<int> maaslar = [9000, 5000, 12000, 7000];

  // int index = calisanlar.indexOf("Fatma");
  // print(maaslar[index]);

  Map<String, int> calisanMaaslari = {
    "Ali": 9000,
    "Ayşe": 5000,
    "Fatma": 12000,
    "Ahmet": 7000
  };
  print(calisanMaaslari["Fatma"]);
}