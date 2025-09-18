void main(){
  List<String> calisanlar = ["Ali", "Ayşe", "Fatma", "Ahmet"];
  List<int> maaslar = [9000, 5000, 1200, 7000];

  int index = calisanlar.indexOf("Fatma");
  print(maaslar[index]);
}