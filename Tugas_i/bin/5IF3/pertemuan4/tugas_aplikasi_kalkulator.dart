import 'dart:io';

int perkalian(int a, int b) {
  return a * b;
}
int penjumlahan(int a, int b) {
  return a + b;
}
int pengurangan(int a, int b) {
  return a - b;
}
double pembagian(int a, int b) {
  return a / b;
}
void main() {
  stdout.write('Masukkan angka pertama: ');
  int angka1 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan angka kedua: ');
  int angka2 = int.parse(stdin.readLineSync()!);

  print('Pilih operasi:');
  print('1. Penjumlahan');
  print('2. Pengurangan');
  print('3. Perkalian');
  print('4. Pembagian');
  stdout.write('Masukkan pilihan 1-4: ');
  int pilihan = int.parse(stdin.readLineSync()!);

  String operasiNama;
  String hasilStr = '';
  switch (pilihan) {
    case 1:
      operasiNama = 'Penjumlahan';
      hasilStr = 'Hasil penjumlahan $angka1 dan $angka2 = ${penjumlahan(angka1, angka2)}';
      break;
    case 2:
      operasiNama = 'Pengurangan';
      hasilStr = 'Hasil pengurangan $angka1 dan $angka2 = ${pengurangan(angka1, angka2)}';
      break;
    case 3:
      operasiNama = 'Perkalian';
      hasilStr = 'Hasil perkalian $angka1 dan $angka2 = ${perkalian(angka1, angka2)}';
      break;
    case 4:
      operasiNama = 'Pembagian';
      if (angka2 == 0) {
        hasilStr = 'Error: Pembagian dengan nol tidak diperbolehkan.';
      } else {
        hasilStr = 'Hasil pembagian $angka1 dan $angka2 = ${pembagian(angka1, angka2)}';
      }
      break;
    default:
      operasiNama = 'Tidak diketahui';
      hasilStr = 'Pilihan tidak valid.';
  }

  stdout.write('Konfirmasi: $operasiNama antara $angka1 dan $angka2? (y/n): ');
  String? konfirmasi = stdin.readLineSync();
  if (konfirmasi != null && konfirmasi.trim().toLowerCase() == 'y') {
    print(hasilStr);
  } else {
    print('Operasi dibatalkan.');
  }
}