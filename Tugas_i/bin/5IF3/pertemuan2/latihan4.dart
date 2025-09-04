import 'dart:io';

void main() {
  print('Pilih operasi:');
  print('1. Penjumlahan');
  print('2. Pengurangan');
  print('3. Perkalian');
  print('4. Pembagian');
  print('5. Keluar');

  stdout.write('Masukkan pilihan (1-5): ');
  int? pilihan = int.tryParse(stdin.readLineSync() ?? '');
  if (pilihan == null || pilihan < 1 || pilihan > 5) {
    print('Pilihan tidak valid.');
    return;
  }

  if (pilihan == 5) {
    print('Keluar. Terima kasih.');
    return;
  }

  stdout.write('Masukkan angka pertama: ');
  double? a = double.tryParse(stdin.readLineSync() ?? '');
  if (a == null) {
    print('Input angka tidak valid.');
    return;
  }

  stdout.write('Masukkan angka kedua: ');
  double? b = double.tryParse(stdin.readLineSync() ?? '');
  if (b == null) {
    print('Input angka tidak valid.');
    return;
  }

  String operasiNama;
  switch (pilihan) {
    case 1:
      operasiNama = 'Penjumlahan';
      break;
    case 2:
      operasiNama = 'Pengurangan';
      break;
    case 3:
      operasiNama = 'Perkalian';
      break;
    case 4:
      operasiNama = 'Pembagian';
      break;
    default:
      operasiNama = 'Tidak diketahui';
  }

  stdout.write('Konfirmasi: $operasiNama antara $a dan $b? (y/n): ');
  String? konfirmasi = stdin.readLineSync();
  if (konfirmasi == null || konfirmasi.trim().toLowerCase() != 'y') {
    print('Operasi dibatalkan.');
    return;
  }

  double hasil;
  String simbol;
  switch (pilihan) {
    case 1:
      hasil = a + b;
      simbol = '+';
      break;
    case 2:
      hasil = a - b;
      simbol = '-';
      break;
    case 3:
      hasil = a * b;
      simbol = '×';
      break;
    case 4:
      if (b == 0) {
        print('Error: Pembagian dengan nol tidak diperbolehkan.');
        return;
      }
      hasil = a / b;
      simbol = '÷';
      break;
    default:
      print('Pilihan tidak valid.');
      return;
  }

  print('Hasil: $a $simbol $b = ${hasil.toString()}');
}