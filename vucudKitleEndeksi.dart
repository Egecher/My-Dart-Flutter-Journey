void main(){
  String boy = "1.85";
  String kilo = "90";

  double boyDbl = double.parse(boy);
  int kiloInt = int.parse(kilo);

  double boyKiloEndeksi = kiloInt / (boyDbl * boyDbl);

  print(boyKiloEndeksi);
}