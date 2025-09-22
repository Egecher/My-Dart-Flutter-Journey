void main() {
  List<String> sehirler = [
    "İstanbul",
    "Ankara",
    "İzmir",
    "Tekirdağ",
  ];

  for(int i = 0; sehirler.length > i; i++) {
    print(sehirler[i]);
  }

  for(String sehir in sehirler) {
    print(sehir); // daha kısa yolu
  }
}