import 'dart:io';
import 'dart:typed_data';

void main() async {
  final client = await Socket.connect('localhost', 5000);

  client.listen((Uint8List data) {
    print(String.fromCharCodes(data));
    client.write(stdin.readLineSync());
  });
  client.write(stdin.readLineSync());
}