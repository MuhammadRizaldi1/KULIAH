import 'dart:io';

void main() {
  stdout.write('Masukkan nama karyawan: ');
  String? namaInput = stdin.readLineSync();
  String namaKaryawan = (namaInput == null || namaInput.trim().isEmpty)
      ? 'Tidak diketahui'
      : namaInput.trim();

  stdout.write('Masukkan jam kerja per minggu (mis. 40): ');
  String? jamInput = stdin.readLineSync();
  double jamKerjaPerMinggu = double.tryParse(jamInput ?? '') ?? 40.0;

  stdout.write('Masukkan upah per jam (mis. 50.0): ');
  String? upahInput = stdin.readLineSync();
  double upahPerJam = double.tryParse(upahInput ?? '') ?? 50.0;

  stdout.write('Status karyawan tetap? (y/n): ');
  String? statusInput = stdin.readLineSync();
  bool statusKaryawanTetap =
      (statusInput != null && statusInput.trim().toLowerCase() == 'y');

  double gajiKotor = jamKerjaPerMinggu * upahPerJam;
  double pajak = statusKaryawanTetap ? gajiKotor * 0.10 : gajiKotor * 0.05;
  double gajiBersih = gajiKotor - pajak;

  print('\nLaporan Gaji Karyawan');
  print('----------------------');
  print('Nama Karyawan: $namaKaryawan');
  print('Gaji Kotor: Rp${gajiKotor.toStringAsFixed(2)}');
  print('Pajak: Rp${pajak.toStringAsFixed(2)}');
  print('Gaji Bersih: Rp${gajiBersih.toStringAsFixed(2)}');
}
