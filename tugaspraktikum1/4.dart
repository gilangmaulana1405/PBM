void main() {
  var mahasiswa = {
    'Gilang': 3.5,
    'Hagi': 3.7,
    'Hanna': 3.6,
    'Ragil  ': 3.4,
    'Isabella': 3.3,
  };

  mahasiswa.forEach((nama_mhs, ipk) {
    if (ipk >= 3.5) {
      print(nama_mhs);
      print('Cumlaude\n');
    } else {
      print(nama_mhs);
      print('Tidak Cumlaude\n');
    }
  });
}
