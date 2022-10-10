void main() {
  String obj = '*';
  for (int i = 1; i < 5; i++) {
    for (int j = i; j < 5; j++) {
      print(obj);
      obj = obj + '*';
    }
  }
}
