import 'dart:io';
import 'package:mahasiswa/mahasiswa.dart';

void main(List<String> args) {
  Mahasiswa mahasiswa;
  var list_mahasiswa = [];
  String jawab;
  var ulang = true;

  print('Inputkan data mahasiswa');
  mahasiswa = Mahasiswa();

  while (ulang) {
    stdout.write('NRP: ');
    mahasiswa.nrp = stdin.readLineSync();
    stdout.write('Nama: ');
    mahasiswa.nama = stdin.readLineSync();
    print('Pilihan Jurusan');
    print('1 : Teknik Informatika');
    print('2 : Teknik Listrik');
    print('3 : Teknik Sipil');
    print('4 : Administrasi Niaga');
    print('5 : Teknik Mesin');
    stdout.write('Jurusan: ');
    mahasiswa.nilai_jurusan = int.tryParse(stdin.readLineSync());

    list_mahasiswa.add(mahasiswa.toMap());

    stdout.write('Berhenti input data? Y|T : ');
    jawab = stdin.readLineSync();
    (jawab == 'Y') ? ulang = false : ulang = true;
  }

  print('=================================================================');
  print('NRP\t\t NAMA\t\t JURUSAN');
  print('=================================================================');
  for (var mhs in list_mahasiswa) {
    print(
        '${mhs['nrp']}\t ${mhs['nama']}\t ${mhs['jurusan']}');
  }
  print('=================================================================');
}