void main(List<String> args) {
  String namaKaryawan = "Rizaldi";
  int jamKerjaPerMinggu = 40;
  double upahPerJam = 50.0;
  bool statusKaryawanTetap = true;
  double gajiKotor = jamKerjaPerMinggu * upahPerJam;
  double pajak;
  if (statusKaryawanTetap) {
    pajak = gajiKotor * 0.10;
  } else {
    pajak = gajiKotor * 0.05;
  }

  double gajiBersih = gajiKotor - pajak;

  print("Laporan Gaji Karyawan");
  print("----------------------");
  print("Nama Karyawan: $namaKaryawan");
  print("Gaji Kotor: Rp${gajiKotor.toStringAsFixed(2)}");
  print("Pajak: Rp${pajak.toStringAsFixed(2)}");
  print("Gaji Bersih: Rp${gajiBersih.toStringAsFixed(2)}");
}
