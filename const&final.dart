void main(){
  // const değerler derleme zamanında (compile-time) bilinen ve değişmeyen değerlerdir.
  const int a = 1;
  const b = 2;

  // Burada a + b işlemi çalışma zamanında (runtime) hesaplanacağı için const kullanılamaz.
  // Bu nedenle 'final' tercih edilmelidir.
  // final int c = a + b;

  // print(c);

  final List<int> liste1 = [a, b];
  const List<int> liste2 = [a, b];

  print(liste1);
  print(liste2);
}