import 'dart:io';

int perkalian(int a, int b) {
  int hasil = a * b;
  return hasil;
}
  void main() {
    stdout.write('Masukkan angka pertama: ');
    int angka1 = int.parse(stdin.readLineSync()!);
    stdout.write('Masukkan angka kedua: ');
    int angka2 = int.parse(stdin.readLineSync()!);
    int hasilPerkalian = perkalian(angka1, angka2);
    print('Hasil perkalian $angka1 dan $angka2 adalah $hasilPerkalian');
  }