void main() {
  List<String> hoby = ['sepak bola', 'voly', 'berenang', 'menyanyi'];
  Map<String, String> hari = {
    hoby[0]: 'senin',
    hoby[1]: 'selasa',
    hoby[2]: 'sabtu',
    hoby[2]: 'minggu',
  };
  Set<String> setHoby = {hoby[0], hoby[1], hoby[2], hoby[3]};

  print('Hari senin latihan : ' + hoby[2]);

  print('kegiatan sepak bola adalah hari');
  print(hari[hoby[1]]);

  print('List kegiatan:');
  print(setHoby);
}
