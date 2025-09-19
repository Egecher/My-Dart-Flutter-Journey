void main() {
  String? gelenVeri;

  gelenVeri = null;

  gelenVeri ??= "Veri çekilemedi";

  print(gelenVeri);
}